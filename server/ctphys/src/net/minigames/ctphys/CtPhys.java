package net.minigames.ctphys;

import com.mojang.brigadier.CommandDispatcher;
import com.mojang.brigadier.arguments.DoubleArgumentType;
import com.mojang.brigadier.arguments.StringArgumentType;
import com.mojang.brigadier.builder.LiteralArgumentBuilder;
import com.mojang.brigadier.builder.RequiredArgumentBuilder;
import com.mojang.brigadier.context.CommandContext;
import net.minecraft.commands.CommandSourceStack;
import net.minecraft.network.chat.Component;
import net.minecraft.network.protocol.game.ClientboundExplodePacket;
import net.minecraft.server.MinecraftServer;
import net.minecraft.server.level.ServerPlayer;
import net.minecraft.world.phys.AABB;
import net.minecraft.world.phys.Vec3;
import net.minecraftforge.common.MinecraftForge;
import net.minecraftforge.event.RegisterCommandsEvent;
import net.minecraftforge.event.TickEvent;
import net.minecraftforge.fml.common.Mod;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.*;

/**
 * Server-side companion for the "Chained Together" mod (modid ct).
 *
 * The ct mod keeps the list of chain links and draws the chains; this mod replaces its
 * per-link pull with rope physics: every tick, each over-stretched link produces a tension
 * impulse (spring + damping), applied equal-and-opposite to both players, summed over all
 * links (net force). Impulses are sent as additive knockback so a player's own momentum is
 * kept. A hard limit snaps players back if a link is stretched past LENGTH + SLACK.
 *
 * Commands (op): /ctphys chainall | release | status | on | off | set <param> <value>
 *
 * Built against the Forge 1.20.1 server jars (SRG member names). No client install needed.
 */
@Mod("ctphys")
public class CtPhys {
    static double LENGTH = 8.0;   // rope length (blocks)
    static double STIFF = 0.15;   // tension per block of overstretch (blocks/tick per tick)
    static double DAMP = 0.6;     // fraction of separating speed removed per tick
    static double MAX_IMP = 0.6;  // cap on one link's impulse per tick
    static double SLACK = 1.0;    // hard limit = LENGTH + SLACK
    static boolean ENABLED = true;

    static final Map<UUID, double[]> lastPos = new HashMap<>();
    static final Map<UUID, double[]> vel = new HashMap<>();
    static int errors = 0;

    public CtPhys() {
        MinecraftForge.EVENT_BUS.addListener(CtPhys::onTick);
        MinecraftForge.EVENT_BUS.addListener(CtPhys::onCommands);
    }

    // ---------- reflection into the ct mod ----------
    static Object mgr() throws Exception {
        Method g = Class.forName("net.garda.ct.chain.ChainManager").getDeclaredMethod("get");
        g.setAccessible(true);
        return g.invoke(null);
    }

    static Object field(Object o, String name) throws Exception {
        Field f = o.getClass().getDeclaredField(name);
        f.setAccessible(true);
        return f.get(o);
    }

    static List<?> links(Object m) throws Exception {
        return (List<?>) field(m, "connections");
    }

    static UUID end(Object link, String getter) throws Exception {
        Method g = link.getClass().getDeclaredMethod(getter);
        g.setAccessible(true);
        return (UUID) g.invoke(link);
    }

    static void sync(Object m, MinecraftServer s) throws Exception {
        Method g = m.getClass().getDeclaredMethod("broadcastSync", MinecraftServer.class);
        g.setAccessible(true);
        g.invoke(m, s);
    }

    static Object ctCfg(String name) throws Exception {
        Field f = Class.forName("net.garda.ct.config.ChainConfig").getDeclaredField(name);
        f.setAccessible(true);
        return f.get(null);
    }

    static Object cfgGet(String name) {
        try {
            Object v = ctCfg(name);
            return v.getClass().getMethod("get").invoke(v);
        } catch (Exception e) {
            return "?";
        }
    }

    static void cfgSet(String name, Object value) throws Exception {
        Object v = ctCfg(name);
        v.getClass().getMethod("set", Object.class).invoke(v, value);
    }

    static void clearState(Object m, String... names) throws Exception {
        for (String n : names) {
            Object o = field(m, n);
            if (o instanceof Map<?, ?> map) map.clear();
            else if (o instanceof Collection<?> c) c.clear();
        }
    }

    // ---------- physics ----------
    static void onTick(TickEvent.ServerTickEvent e) {
        if (e.phase != TickEvent.Phase.END) return;
        MinecraftServer s = e.getServer();
        Set<UUID> online = new HashSet<>();
        for (ServerPlayer p : s.m_6846_().m_11314_()) {
            UUID id = p.m_20148_();
            online.add(id);
            Vec3 pos = p.m_20182_();
            double[] now = {pos.f_82479_, pos.f_82480_, pos.f_82481_};
            double[] lp = lastPos.get(id);
            double[] v = {0, 0, 0};
            if (lp != null) {
                v = new double[]{now[0] - lp[0], now[1] - lp[1], now[2] - lp[2]};
                if (v[0] * v[0] + v[1] * v[1] + v[2] * v[2] > 16) v = new double[]{0, 0, 0}; // teleport
            }
            vel.put(id, v);
            lastPos.put(id, now);
        }
        lastPos.keySet().retainAll(online);
        vel.keySet().retainAll(online);
        if (!ENABLED) return;
        try {
            physics(s);
        } catch (Throwable t) {
            if (errors++ % 400 == 0) {
                System.err.println("[ctphys] physics error: " + t);
                t.printStackTrace();
            }
        }
    }

    static void physics(MinecraftServer s) throws Exception {
        List<?> ls = links(mgr());
        if (ls.isEmpty()) return;
        Map<ServerPlayer, double[]> imp = new LinkedHashMap<>();
        List<Object[]> over = new ArrayList<>();
        for (Object link : ls) {
            ServerPlayer a = s.m_6846_().m_11259_(end(link, "getFromPlayer"));
            ServerPlayer b = s.m_6846_().m_11259_(end(link, "getToPlayer"));
            if (a == null || b == null || a == b) continue;
            if (a.m_9236_() != b.m_9236_()) continue;
            if (a.m_5833_() || b.m_5833_() || !a.m_6084_() || !b.m_6084_()) continue;
            Vec3 pa = a.m_20182_(), pb = b.m_20182_();
            double dx = pb.f_82479_ - pa.f_82479_, dy = pb.f_82480_ - pa.f_82480_, dz = pb.f_82481_ - pa.f_82481_;
            double dist = Math.sqrt(dx * dx + dy * dy + dz * dz);
            if (dist <= LENGTH || dist < 1e-6) continue;
            double nx = dx / dist, ny = dy / dist, nz = dz / dist, ex = dist - LENGTH;
            double[] va = vel.getOrDefault(a.m_20148_(), new double[3]);
            double[] vb = vel.getOrDefault(b.m_20148_(), new double[3]);
            double sep = (vb[0] - va[0]) * nx + (vb[1] - va[1]) * ny + (vb[2] - va[2]) * nz;
            double j = Math.min(STIFF * ex + DAMP * Math.max(sep, 0), MAX_IMP);
            add(imp, a, nx * j / 2, ny * j / 2, nz * j / 2);   // a pulled toward b
            add(imp, b, -nx * j / 2, -ny * j / 2, -nz * j / 2); // b pulled toward a
            if (ex > SLACK) over.add(new Object[]{a, b, nx, ny, nz, ex});
        }
        for (Map.Entry<ServerPlayer, double[]> en : imp.entrySet()) {
            double[] d = en.getValue();
            double ix = clamp(d[0], -MAX_IMP, MAX_IMP), iy = clamp(d[1], -MAX_IMP, 0.45), iz = clamp(d[2], -MAX_IMP, MAX_IMP);
            if (Math.abs(ix) + Math.abs(iy) + Math.abs(iz) < 1e-4) continue;
            ServerPlayer p = en.getKey();
            if (iy > 0) p.f_19789_ = 0f; // being held up by the chain: no fall damage build-up
            push(p, ix, iy, iz);
        }
        for (Object[] o : over) {
            hardLimit((ServerPlayer) o[0], (ServerPlayer) o[1], (double) o[2], (double) o[3], (double) o[4], (double) o[5]);
        }
    }

    static void add(Map<ServerPlayer, double[]> imp, ServerPlayer p, double x, double y, double z) {
        double[] d = imp.computeIfAbsent(p, k -> new double[3]);
        d[0] += x;
        d[1] += y;
        d[2] += z;
    }

    static double clamp(double v, double lo, double hi) {
        return Math.max(lo, Math.min(hi, v));
    }

    /** Additive velocity change: explosion packet knockback is ADDED to the client's motion. */
    static void push(ServerPlayer p, double x, double y, double z) {
        Vec3 pos = p.m_20182_();
        // The "explosion" itself is placed far below the player so its sound/particles are never perceived.
        p.f_8906_.m_9829_(new ClientboundExplodePacket(pos.f_82479_, pos.f_82480_ - 4000, pos.f_82481_, 0f,
                Collections.emptyList(), new Vec3(x, y, z)));
    }

    /** Link stretched past LENGTH+SLACK: move the players back together (whoever has room). */
    static void hardLimit(ServerPlayer a, ServerPlayer b, double nx, double ny, double nz, double ex) {
        double move = ex - SLACK * 0.5;
        if (move <= 0) return;
        double ma = move / 2, mb = move / 2;
        boolean fa = free(a, nx * ma, ny * ma, nz * ma), fb = free(b, -nx * mb, -ny * mb, -nz * mb);
        if (!fa && fb) {
            ma = 0;
            mb = move;
            fb = free(b, -nx * mb, -ny * mb, -nz * mb);
        } else if (fa && !fb) {
            mb = 0;
            ma = move;
            fa = free(a, nx * ma, ny * ma, nz * ma);
        }
        if (fa && ma > 0) shift(a, nx * ma, ny * ma, nz * ma);
        if (fb && mb > 0) shift(b, -nx * mb, -ny * mb, -nz * mb);
    }

    static boolean free(ServerPlayer p, double x, double y, double z) {
        AABB box = p.m_20191_().m_82386_(x, y, z);
        return p.m_9236_().m_45756_(p, box);
    }

    static void shift(ServerPlayer p, double x, double y, double z) {
        Vec3 pos = p.m_20182_();
        double nx = pos.f_82479_ + x, ny = pos.f_82480_ + y, nz = pos.f_82481_ + z;
        p.m_6021_(nx, ny, nz);
        lastPos.put(p.m_20148_(), new double[]{nx, ny, nz});
    }

    // ---------- commands ----------
    static LiteralArgumentBuilder<CommandSourceStack> lit(String n) {
        return LiteralArgumentBuilder.literal(n);
    }

    static void onCommands(RegisterCommandsEvent e) {
        CommandDispatcher<CommandSourceStack> d = e.getDispatcher();
        d.register(lit("ctphys").requires(src -> src.m_6761_(2))
                .then(lit("chainall").executes(CtPhys::chainAll))
                .then(lit("release").executes(CtPhys::release))
                .then(lit("status").executes(CtPhys::status))
                .then(lit("on").executes(c -> { ENABLED = true; return ok(c, "Chain physics ON"); }))
                .then(lit("off").executes(c -> { ENABLED = false; return ok(c, "Chain physics OFF"); }))
                .then(lit("set").then(RequiredArgumentBuilder.<CommandSourceStack, String>argument("param", StringArgumentType.word())
                        .then(RequiredArgumentBuilder.<CommandSourceStack, Double>argument("value", DoubleArgumentType.doubleArg(0))
                                .executes(CtPhys::set)))));
    }

    static int ok(CommandContext<CommandSourceStack> c, String msg) {
        c.getSource().m_288197_(() -> Component.m_237113_(msg), false);
        return 1;
    }

    static int fail(CommandContext<CommandSourceStack> c, Throwable t) {
        c.getSource().m_81352_(Component.m_237113_("ctphys error: " + t));
        t.printStackTrace();
        return 0;
    }

    static int chainAll(CommandContext<CommandSourceStack> c) {
        MinecraftServer s = c.getSource().m_81377_();
        try {
            Object m = mgr();
            // This mod does the pulling; push ct's own per-link pull out of the way (one config write).
            Object len = cfgGet("maxChainLength");
            if (!(len instanceof Number n) || n.doubleValue() < 127) cfgSet("maxChainLength", 128.0);
            clearState(m, "afkUnchained", "waitingForCombatEnd");
            Method all = m.getClass().getDeclaredMethod("chainAllPlayers", MinecraftServer.class);
            all.setAccessible(true);
            all.invoke(m, s); // the ct mod's own "chain everyone to everyone"
            sync(m, s);
            for (ServerPlayer p : s.m_6846_().m_11314_()) lastPos.remove(p.m_20148_());
            return ok(c, "Chained " + s.m_6846_().m_11314_().size() + " players together (" + links(m).size() + " links)");
        } catch (Throwable t) {
            return fail(c, t);
        }
    }

    static int release(CommandContext<CommandSourceStack> c) {
        MinecraftServer s = c.getSource().m_81377_();
        try {
            Object m = mgr();
            int n = links(m).size();
            links(m).clear();
            clearState(m, "savedGroup", "waitingForCombatEnd", "afkUnchained", "respawnProtection", "climbingWall", "pulledThisTick");
            sync(m, s);
            return ok(c, "Released " + n + " chain links");
        } catch (Throwable t) {
            return fail(c, t);
        }
    }

    static int status(CommandContext<CommandSourceStack> c) {
        MinecraftServer s = c.getSource().m_81377_();
        try {
            List<?> ls = links(mgr());
            StringBuilder sb = new StringBuilder();
            sb.append(String.format("ctphys %s | length=%.1f stiff=%.2f damp=%.2f maxImp=%.2f slack=%.1f | links=%d%n",
                    ENABLED ? "ON" : "OFF", LENGTH, STIFF, DAMP, MAX_IMP, SLACK, ls.size()));
            sb.append("ct: maxChainLength=").append(cfgGet("maxChainLength"))
                    .append(" combatWarning=").append(cfgGet("combatTeleportWarning"))
                    .append(" afk=").append(cfgGet("afkUnchainEnabled"))
                    .append(" rechainOnDeath=").append(cfgGet("rechainOnDeath"))
                    .append(" chainOnJoin=").append(cfgGet("chainOnJoin"));
            for (Object link : ls) {
                ServerPlayer a = s.m_6846_().m_11259_(end(link, "getFromPlayer"));
                ServerPlayer b = s.m_6846_().m_11259_(end(link, "getToPlayer"));
                String an = a == null ? "(offline)" : a.m_7755_().getString();
                String bn = b == null ? "(offline)" : b.m_7755_().getString();
                String dist = (a != null && b != null && a.m_9236_() == b.m_9236_())
                        ? String.format("%.1f", Math.sqrt(sq(a.m_20182_(), b.m_20182_()))) : "-";
                sb.append("\n  ").append(an).append(" <-> ").append(bn).append("  ").append(dist);
            }
            return ok(c, sb.toString());
        } catch (Throwable t) {
            return fail(c, t);
        }
    }

    static double sq(Vec3 a, Vec3 b) {
        double x = a.f_82479_ - b.f_82479_, y = a.f_82480_ - b.f_82480_, z = a.f_82481_ - b.f_82481_;
        return x * x + y * y + z * z;
    }

    static int set(CommandContext<CommandSourceStack> c) {
        String p = StringArgumentType.getString(c, "param");
        double v = DoubleArgumentType.getDouble(c, "value");
        switch (p) {
            case "length" -> LENGTH = Math.max(2, v);
            case "stiff" -> STIFF = v;
            case "damp" -> DAMP = v;
            case "maximp" -> MAX_IMP = v;
            case "slack" -> SLACK = v;
            default -> {
                c.getSource().m_81352_(Component.m_237113_("params: length stiff damp maximp slack"));
                return 0;
            }
        }
        return ok(c, "ctphys " + p + " = " + v);
    }
}

# Server mods

This repo ships the **datapack** (all the game logic). The mods below are **not
redistributed here** — download them yourself from their official pages and drop
the `.jar`s into the server's `mods/` folder. All are **Forge 1.20.1**. Match the
versions (or newer 1.20.1 builds).

> The datapack runs fine with **no mods at all** — the mod-specific items it
> hands out simply don't appear. The two "recommended" mods below are the only
> ones the datapack references.

## Recommended (referenced by the datapack)

| Mod | Version used | Side | Why | Source |
|-----|--------------|------|-----|--------|
| **Upgrader** (Upgrade Items) | `upgrader-forge-1.2.1+1.20.1` | **client + server** | The "gambler" item every player carries — gamble an item into a better one | Modrinth: `upgrade-items` |
| **YYZS Backpack** | `yyzsbackpack-0.0.5-reborn+1.20.1` | **client + server** | Portable storage handed out in kits | CurseForge/Modrinth: `yyzsbackpack` |

Because these are **client+server** mods, every player must also install them in
their own client `mods/` folder or they can't join (see `docs/PLAYERS.md`).

## Optional quality-of-life (server-side flavor)

| Mod | Version used | Side | Why | Source |
|-----|--------------|------|-----|--------|
| **Simple Voice Chat** | `voicechat-forge-1.20.1-2.6.22` | client + server | Proximity voice — great for hunts | Modrinth: `simple-voice-chat` |
| **Realistic Nametag** | `RealisticNametag-forge-1.20.1-1.3.1` | client + server | Cleaner nametag rendering | CurseForge: `realistic-nametag` |
| **Saros Worldborder Customizer** | `Saros-Worldborder-Customizer-Forge-1.20.1-1.0.0` | server | Nicer shrinking-border visuals | CurseForge |
| **Borderlike Battle Royale** | `borderlikebattleroyale-0.2` | server | Border effects | CurseForge |

## Required for Random Gravity (client + server)

The **Random Gravity** game (`/function randomgravity:start`) changes each player's
gravity direction (camera rotates, you walk on walls/ceiling). Vanilla 1.20.1
can't do that, so it needs these four mods on **both** server and every client,
at exactly these versions:

| Mod | Version | Source |
|-----|---------|--------|
| **GravityVS** | `1.0.2` (`gravityapivs-1.0.2.jar`) | Modrinth: `gravityvs` |
| **Valkyrien Skies** | `2.4.11` (`valkyrienskies-120-2.4.11.jar`) | Modrinth: `valkyrien-skies` (`1.20.1-forge-2.4.11`) |
| **Kotlin for Forge** | `4.12.0` (`kotlinforforge-4.12.0-all.jar`) | Modrinth: `kotlin-for-forge` |
| **MixinSquared** | `0.3.7` (`mixinsquared-forge-0.3.7.jar`) | https://maven.bawnorton.com/releases/com/github/bawnorton/mixinsquared/mixinsquared-forge/0.3.7/ |

- GravityVS needs MixinSquared at runtime but doesn't declare or bundle it, and it
  isn't on Modrinth, so without that jar the game **crashes at launch**.
- Valkyrien Skies is a hard dependency of GravityVS (it also adds ship physics).
- The server fetches the first three from Modrinth (see `deploy/.env.example`);
  drop `mixinsquared-forge-0.3.7.jar` into `deploy/mods/` yourself.
- In GravityVS 1.0.2 the `/gravity` command is never registered and its
  `gravityapivs:<direction>` effects don't work (a bug: they aren't the objects its
  tick looks up). The Gravity Anchor **items** do work when held in a hand slot, so
  the datapack drives gravity by placing an anchor in each player's offhand.

## Notes
- If you drop the two recommended mods, the datapack still works; players just
  won't get the gambler or backpack items.
- Keep client and server mod versions identical to avoid connection rejections.

## Chained Together (Chained Together minigame)
- CurseForge: https://www.curseforge.com/minecraft/mc-mods/chained-together (file 7852988, `ct-1.0.0`).
- Required on **server and every client** (default Forge version check). All Rights Reserved,
  so share the CurseForge link rather than the jar. Server copy: `deploy/mods/chained-together-1.0.0.jar`.
- Auto-chain on join is off (`chainOnJoin=false` in world/serverconfig/ct-server.toml); the minigame chains players.

## ctphys (our server-side physics mod for Chained Together)
- Source: `server/ctphys`. Build: `server/ctphys/build.sh` (needs docker and an installed Forge
  server under `deploy/data/forge/libraries`), outputs `deploy/mods/ctphys-1.0.0.jar`; restart Forge.
- Server only (`displayTest=IGNORE_SERVER_VERSION`) — players do not install it.

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

## Notes
- If you drop the two recommended mods, the datapack still works; players just
  won't get the gambler or backpack items.
- Keep client and server mod versions identical to avoid connection rejections.

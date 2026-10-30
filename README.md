# Party Minigames for Minecraft 1.20.1

A suite of five PvP party minigames built as a **vanilla datapack** for a
**Forge 1.20.1** server, plus the small toolkit to run and reset it. Designed
for a group of friends (~2–8 players) and easy for other server owners to
deploy.

| Game | Command | The idea |
|------|---------|----------|
| 🎯 **Circle Hunt** | `/function circle_hunt:start` | Everyone secretly hunts a target via compass; first to 25 |
| ⛏️ **Mole Hunt** | `/function circle_hunt:start_mole` | Circle Hunt entombed in a solid-stone dimension — tunnel to your target |
| 🟫 **Block Shuffle** | `/function blockshuffle:start` | Stand on your random block before the timer; last one standing wins |
| 👑 **Boss Hunt** | `/function boss_hunt:start_boss` | One scaled boss vs. everyone; kill it or it survives 10 min |
| 🥔 **Hot Potato** | `/function hotpotato:start` | Pass the bomb by tagging; holder loses a life when it blows |

Run **`/function minigames:help`** in-game for a clickable menu. Only one game
runs at a time; `/function minigames:stop` ends it and resets everyone.

## What's in here

```
datapack/     The game logic (vanilla datapack — this is the core).
server/       Templates: server.properties, systemd unit, start.sh, mods list, sudoers.
scripts/      RCON client + wipe / fast-wipe / seed pre-loader / status tools.
docs/         DEPLOY.md (server owners), GAMES.md (how each game works), PLAYERS.md (how to join).
install.sh    One-shot installer into an existing Forge 1.20.1 server.
```

## Quick start (server owners)

1. Stand up a **Forge 1.20.1** server with **Java 17+** (see `docs/DEPLOY.md`).
2. Configure `server.properties` from the template (enable RCON, set a password).
3. `MC_DIR=/srv/minecraft-minigames MC_USER=minecraft bash install.sh`
4. *(optional)* add the mods in `server/mods.md`, install the systemd unit.
5. Start the server, op yourself, and run `/function minigames:help`.

Full guide: **[docs/DEPLOY.md](docs/DEPLOY.md)**.

## Quick start (players)

Minecraft Java **1.20.1** + **Forge**, plus the server's mods (if any) matched to
the server's versions, then join the whitelist. See **[docs/PLAYERS.md](docs/PLAYERS.md)**.

## Requirements

- Minecraft Java Edition **1.20.1**
- **Forge 1.20.1** (tested on `47.4.10`)
- **Java 17+** on the server
- The datapack needs **no mods** to function; the Upgrader and YYZS Backpack mods
  add the gambler/backpack items if installed (`server/mods.md`).

## Notes & credits

- The datapack and scripts in this repo are original work (MIT, see `LICENSE`).
- Third-party **mods are not redistributed** here — download them from their
  official pages (`server/mods.md`). They remain under their own licenses.
- Minecraft and Forge are not affiliated with this project.

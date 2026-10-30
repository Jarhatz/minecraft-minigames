# The minigames

All games are run from in-game by an operator. The front door is:

```
/function minigames:help
```

…which prints a clickable menu of every game plus Start/Stop buttons. Only
**one game runs at a time** — starting another while one is active is refused
with a prompt to stop the current one first:

```
/function minigames:stop          # end whatever is running, reset everyone to the lobby
```

Every start wipes and re-kits all players (inventory, health, hunger, effects,
XP, gamemode) so each round begins from a clean slate.

---

## Circle Hunt — `/function circle_hunt:start`
Everyone is secretly assigned a **target** and is secretly someone else's
**hunter**. A compass in slot 9 always points at your target; sneak with it to
ping their exact coordinates. First to **25 points** wins.

- Kills re-scramble everyone's targets and shrink the border by 50 blocks.
- Direct kill of your target = 2 points; any other death of your target = 1.
- The leader (2+ pts) becomes a public **bounty** worth double.
- Dynamic events: supply drops, Open Season, and Inversion (compass flips to
  point at your *hunter*).
- A proximity warning tells lower-ranked players when their hunter is within
  50 blocks (toggle with `/function circle_hunt:prox_off` / `prox_on`).

## Mole Hunt — `/function circle_hunt:start_mole`
Circle Hunt, but everyone spawns **entombed in a solid-stone custom dimension**.
You get a Silk Touch "Mole Claw" pickaxe (seal your tunnels), bread, and night
vision. Tunnel toward your target. Supply drops carve loot rooms into the stone.

> A brand-new custom dimension only registers on a server **restart** (not a
> `/reload`). After first install, restart once before running Mole Hunt.

## Block Shuffle — `/function blockshuffle:start`
Each round every player gets a random block (drawn from a large, varied flat
pool); stand on it before the timer ends. Fail → eliminated. Last player
standing wins. A sidebar shows everyone's block and ✔/✖ status.

## Boss Hunt — `/function boss_hunt:start_boss`
One random player becomes a **scaled boss** (glowing red) versus everyone else.
Boss stats (health, strength, speed, resistance, knockback resistance) scale to
the hunter count so a 1-v-N fight stays fair. Boss has one life; hunters respawn
after a short lockout. **Kill the boss** to win, or the boss wins if it survives
10 minutes (shown on a countdown bossbar). The previous boss can't be boss again
next match.

## Hot Potato — `/function hotpotato:start`
Pass the "potato" by **hitting** another player (bare-hand, minimal damage).
Whoever holds it when the fuse blows loses a life (3 lives each); last player
standing wins. A tight arena keeps everyone close.

- Randomized **90–150s fuse** shown on a bossbar.
- The holder is **hidden** (no glow) and their screen edges glow red, while
  **everyone else glows** so only the holder can see where people are.
- An accelerating heartbeat plays for the holder as the fuse burns down.
- Everyone gets a pickaxe + blocks to build/dig, and infinite saturation.
- A sidebar shows each player's remaining lives.

---

## The "gambler" (Upgrader item)
If the Upgrader mod is installed, every player always carries one Upgrader item
(it's re-given within a second if lost, in every mode). Toggle it globally:

```
/function minigames:upgrader_off   # remove it from everyone (incl. on next login)
/function minigames:upgrader_on    # give it back to everyone
```

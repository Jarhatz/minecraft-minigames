#!/usr/bin/env bash
# Quick live status of the server and the active minigame.
# Usage: bash scripts/status.sh
cd "$(dirname "$0")"
. ./config.sh

echo "== service =="
mc_systemctl is-active 2>/dev/null || true
echo "== players & state =="
rcon "list" \
     "scoreboard players get #active_mode ch_scratch" \
     "gamerule keepInventory" \
     "worldborder get"
echo "== recent deaths (server log) =="
tail -n 400 "$MC_DIR/logs/latest.log" 2>/dev/null \
  | grep -E "fell|was slain|drowned|died|was shot|lava|blew up|hit the ground|burned" \
  | tail -12 || echo "(no log access)"

#!/usr/bin/env bash
# Wipe the world and restart with a fresh copy of the minigames datapack.
# The next boot generates a brand-new world (random seed unless one is pinned
# in server.properties). Usage: bash scripts/wipe.sh
set -e
cd "$(dirname "$0")"
. ./config.sh

echo "→ stopping server"
mc_systemctl stop
echo "→ deleting world (fresh seed on next boot)"
run_as_mc "rm -rf '$MC_DIR/world'"
echo "→ installing fresh datapack into the new world"
run_as_mc "mkdir -p '$MC_DIR/world/datapacks' && cp -r '$MC_DIR/datapack' '$MC_DIR/world/datapacks/$MC_DATAPACK'"
echo "→ starting server"
mc_systemctl start
echo "→ waiting for game port $GAME_PORT ..."
until ss -tln | grep -q ":$GAME_PORT"; do sleep 3; done
echo "✓ server up with a fresh world and the minigames datapack loaded"

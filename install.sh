#!/usr/bin/env bash
# Installs the minigames datapack + launcher into an existing Forge 1.20.1
# server directory. Safe to re-run (it won't overwrite your server.properties
# or world). Configure paths in scripts/config.sh or via env vars first.
#
#   MC_DIR=/srv/minecraft-minigames MC_DATAPACK=minigames bash install.sh
set -e
HERE="$(cd "$(dirname "$0")" && pwd)"
. "$HERE/scripts/config.sh"

echo "Installing into: $MC_DIR  (datapack folder: $MC_DATAPACK)"
if [ ! -d "$MC_DIR" ]; then
  echo "ERROR: $MC_DIR does not exist. Create your Forge server there first"
  echo "       (see docs/DEPLOY.md), then re-run."
  exit 1
fi

# 1) Datapack template (wipe.sh copies this into each fresh world).
run_as_mc "rm -rf '$MC_DIR/datapack' && cp -r '$HERE/datapack' '$MC_DIR/datapack'"
echo "✓ datapack template -> $MC_DIR/datapack"

# 2) If a world already exists, install/refresh the datapack inside it too.
if run_as_mc "[ -d '$MC_DIR/world' ]"; then
  run_as_mc "mkdir -p '$MC_DIR/world/datapacks' && rm -rf '$MC_DIR/world/datapacks/$MC_DATAPACK' && cp -r '$HERE/datapack' '$MC_DIR/world/datapacks/$MC_DATAPACK'"
  echo "✓ datapack installed into existing world (run /reload or restart)"
else
  echo "• no world yet — it will be created with the datapack on first boot/wipe"
fi

# 3) Launcher.
run_as_mc "cp '$HERE/server/start.sh' '$MC_DIR/start.sh' && chmod +x '$MC_DIR/start.sh'"
echo "✓ launcher -> $MC_DIR/start.sh"

cat <<EOF

Next steps (see docs/DEPLOY.md for detail):
  1. server.properties : base it on server/server.properties.template
                         (set a real rcon.password, enable-rcon=true).
  2. mods/             : add the jars listed in server/mods.md (optional).
  3. systemd           : install server/minecraft-minigames.service.template
                         as $MC_SERVICE, then: systemctl enable --now $MC_SERVICE
  4. sudoers (optional): server/sudoers.template for passwordless script use.
  5. Play              : in-game run  /function minigames:help
EOF

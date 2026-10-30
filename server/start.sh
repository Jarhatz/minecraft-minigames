#!/usr/bin/env bash
# Launcher for the Forge 1.20.1 minigames server.
# Edit MC_DIR / JAVA_BIN / FORGE_VERSION / memory to match your box, or set
# them in the environment / systemd unit.
set -e
MC_DIR="${MC_DIR:-/srv/minecraft-minigames}"
JAVA_BIN="${JAVA_BIN:-java}"
FORGE_VERSION="${FORGE_VERSION:-1.20.1-47.4.10}"
XMS="${XMS:-6G}"
XMX="${XMX:-6G}"

cd "$MC_DIR"
# Aikar-style flags live in user_jvm_args.txt (created by the Forge installer).
exec "$JAVA_BIN" -Xms"$XMS" -Xmx"$XMX" \
  @user_jvm_args.txt \
  @libraries/net/minecraftforge/forge/"$FORGE_VERSION"/unix_args.txt \
  nogui

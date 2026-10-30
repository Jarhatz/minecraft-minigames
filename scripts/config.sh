#!/usr/bin/env bash
# Shared configuration for all management scripts.
# Every value can be overridden by exporting it in your environment before
# running a script, or by editing the defaults here to match your install.

# Absolute path to the server directory (contains the Forge server + world).
export MC_DIR="${MC_DIR:-/srv/minecraft-minigames}"

# systemd service name that runs the server.
export MC_SERVICE="${MC_SERVICE:-minecraft-minigames.service}"

# OS user the server process runs as (the account that owns MC_DIR).
export MC_USER="${MC_USER:-minecraft}"

# Folder name the datapack is installed under in world/datapacks/.
export MC_DATAPACK="${MC_DATAPACK:-minigames}"

# Ports.
export GAME_PORT="${GAME_PORT:-25565}"
export RCON_HOST="${RCON_HOST:-127.0.0.1}"
export RCON_PORT="${RCON_PORT:-25575}"

# RCON password: taken from $RCON_PASSWORD if set, otherwise read from this file.
export RCON_PASS_FILE="${RCON_PASS_FILE:-$MC_DIR/.rcon-pass}"

# Java binary to launch the server with (Forge 1.20.1 needs Java 17+).
export JAVA_BIN="${JAVA_BIN:-java}"

# --- helpers used by the other scripts -------------------------------------

# Run a command as the server user. Uses sudo unless you already are that user.
run_as_mc() {
  if [ "$(id -un)" = "$MC_USER" ]; then
    bash -c "$*"
  else
    sudo -n -u "$MC_USER" /bin/bash -c "$*"
  fi
}

# Run a systemctl subcommand against the service (needs sudo privileges).
mc_systemctl() {
  if [ "$(id -u)" = "0" ]; then
    /usr/bin/systemctl "$@" "$MC_SERVICE"
  else
    sudo -n /usr/bin/systemctl "$@" "$MC_SERVICE"
  fi
}

# Path to rcon.py (same directory as this config).
RCON_PY="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/rcon.py"
rcon() { python3 "$RCON_PY" "$@"; }

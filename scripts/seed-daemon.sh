#!/usr/bin/env bash
# OPTIONAL seed pre-loader.
#
# Vets candidate seeds on a SEPARATE lightweight vanilla world-gen instance
# (its own directory + ports) so your live game is never touched, and stashes
# the first good one in $NEXT_SEED_FILE. scripts/fast-wipe.sh then consumes it
# for an instant good-spawn reset.
#
# A "good" seed = a green land biome within 150 blocks of spawn and no
# ocean/desert/badlands/snow/swamp/river within 450 blocks.
#
# Requirements (see docs/DEPLOY.md):
#   - A vanilla server.jar for your MC version at $SEEDCHECK_DIR/server.jar
#   - $SEEDCHECK_DIR/server.properties with enable-rcon=true on $SEEDCHECK_RCON_PORT
#     and the SAME level-type as your live server
#   - eula=true in $SEEDCHECK_DIR
# Run detached, e.g.:  setsid nohup bash scripts/seed-daemon.sh >/dev/null 2>&1 &
set -u
cd "$(dirname "$0")"
. ./config.sh

SEEDCHECK_DIR="${SEEDCHECK_DIR:-$MC_DIR/seedcheck}"
SEEDCHECK_RCON_PORT="${SEEDCHECK_RCON_PORT:-25599}"
SEEDCHECK_XMX="${SEEDCHECK_XMX:-1500M}"
NEXT="${NEXT_SEED_FILE:-$MC_DIR/.next-seed}"
LOG="${SEED_DAEMON_LOG:-$MC_DIR/.seed-daemon.log}"
# Acceptance thresholds (blocks).
GREEN_MAX="${SEED_GREEN_MAX:-150}"
BAD_MIN="${SEED_BAD_MIN:-450}"

PASS=$(run_as_mc "cat '$SEEDCHECK_DIR/.rcon-pass'" 2>/dev/null)
log(){ echo "[$(date +%H:%M:%S)] $*" >> "$LOG"; }

srcon(){ # RCON to the shadow instance
  SC_PASS="$PASS" SC_PORT="$SEEDCHECK_RCON_PORT" python3 - "$@" <<'PY'
import socket,struct,sys,os
PASS=os.environ["SC_PASS"]; PORT=int(os.environ["SC_PORT"])
def pk(i,t,b): d=struct.pack("<ii",i,t)+b.encode()+b"\x00\x00"; return struct.pack("<i",len(d))+d
def rc(s):
    n=struct.unpack("<i",s.recv(4))[0]; d=b""
    while len(d)<n: d+=s.recv(n-len(d))
    return d
try:
    s=socket.create_connection(("127.0.0.1",PORT),timeout=8)
    s.sendall(pk(1,3,PASS)); rc(s)
    for c in sys.argv[1:]:
        s.sendall(pk(2,2,c)); r=rc(s); sys.stdout.write(r[8:-2].decode(errors="replace")+"\n")
    s.close()
except Exception:
    sys.exit(1)
PY
}

wait_shadow(){ for i in $(seq 1 60); do srcon list >/dev/null 2>&1 && return 0; sleep 3; done; return 1; }
stop_shadow(){ srcon stop >/dev/null 2>&1; for i in $(seq 1 20); do pgrep -f "$SEEDCHECK_DIR/server.jar" >/dev/null || return 0; sleep 2; done; run_as_mc "pkill -9 -f '$SEEDCHECK_DIR/server.jar'" 2>/dev/null; sleep 2; }
dist(){ echo "$1" | grep -oE '[0-9]+ block' | grep -oE '[0-9]+' | head -1; }

roll_once(){
  local SEED=$RANDOM$RANDOM$RANDOM
  run_as_mc "cd '$SEEDCHECK_DIR' && rm -rf world && sed -i 's/^level-seed=.*/level-seed=$SEED/' server.properties && setsid nohup '$JAVA_BIN' -Xms1G -Xmx$SEEDCHECK_XMX -jar server.jar nogui > console.log 2>&1 < /dev/null &"
  if ! wait_shadow; then log "shadow rcon never came up for $SEED"; stop_shadow; return 1; fi
  local GREEN=99999 BAD=99999 D
  for b in 'minecraft:plains' '#minecraft:is_forest' 'minecraft:meadow'; do
    D=$(dist "$(srcon "execute positioned 0 100 0 run locate biome $b" 2>/dev/null)"); D=${D:-99999}
    [ "$D" -lt "$GREEN" ] && GREEN=$D
  done
  for b in 'minecraft:desert' '#minecraft:is_badlands' '#minecraft:is_ocean' 'minecraft:snowy_plains' 'minecraft:ice_spikes' 'minecraft:swamp' 'minecraft:mangrove_swamp' '#minecraft:is_river'; do
    D=$(dist "$(srcon "execute positioned 0 100 0 run locate biome $b" 2>/dev/null)"); D=${D:-99999}
    [ "$D" -lt "$BAD" ] && BAD=$D
  done
  stop_shadow
  log "seed $SEED green=$GREEN bad=$BAD"
  if [ "$GREEN" -le "$GREEN_MAX" ] && [ "$BAD" -ge "$BAD_MIN" ]; then echo "$SEED"; return 0; fi
  return 1
}

log "daemon started (pid $$)"
while true; do
  if [ -s "$NEXT" ]; then sleep 30; continue; fi
  for i in $(seq 1 60); do rcon list >/dev/null 2>&1 && break; sleep 5; done
  log "rolling for next seed..."
  for a in $(seq 1 40); do
    if S=$(roll_once); then echo "$S" > "$NEXT"; log "PRELOADED next seed: $S"; break; fi
    sleep 2
  done
  sleep 5
done

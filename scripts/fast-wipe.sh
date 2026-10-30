#!/usr/bin/env bash
# Instant reset. If the seed pre-loader (seed-daemon.sh) has stashed a vetted
# seed, use it for an instant good-spawn world; otherwise fall back to random.
# Usage: bash scripts/fast-wipe.sh
set -e
cd "$(dirname "$0")"
. ./config.sh

NEXT="${NEXT_SEED_FILE:-$MC_DIR/.next-seed}"
PROPS="$MC_DIR/server.properties"

if [ -s "$NEXT" ]; then
  SEED=$(cat "$NEXT")
  echo "→ using PRE-LOADED vetted seed $SEED"
  run_as_mc "sed -i 's/^level-seed=.*/level-seed=$SEED/' '$PROPS'"
  rm -f "$NEXT"
else
  echo "→ no pre-loaded seed ready; using a random seed"
  run_as_mc "sed -i 's/^level-seed=.*/level-seed=/' '$PROPS'"
fi

bash ./wipe.sh

# Clear the pin so the generated world keeps its seed and future manual
# wipes are random again.
run_as_mc "sed -i 's/^level-seed=.*/level-seed=/' '$PROPS'"
echo "✓ reset complete (the pre-loader will vet the next seed in the background)"

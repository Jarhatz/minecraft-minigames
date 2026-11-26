# Self-heal every 5s: anyone alive with nobody within 12 blocks (chain is 8) has lost their chain
# (death, relog, late join) -> teleport + chain them to the nearest player.
scoreboard players add #ct_heal ch_scratch 1
execute if score #ct_heal ch_scratch matches 100.. run function chainedtogether:_heal_all

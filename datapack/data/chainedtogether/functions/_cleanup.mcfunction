scoreboard players set #active_mode ch_scratch 0
ctphys release
title @a clear
playsound minecraft:block.chain.break master @a ~ ~ ~ 1 1
execute if score #ct_keepinv ch_scratch matches 1 run gamerule keepInventory true
scoreboard players reset #ct_keepinv ch_scratch

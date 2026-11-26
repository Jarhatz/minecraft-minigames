# Everyone goes to whoever ran the command, then the whole group is chained (every pair linked).
# Physics (max length, pull, net forces) comes from the server-side ctphys mod (server/ctphys).
# keepInventory is OFF during the game; the previous value is restored on stop.
execute unless score #active_mode ch_scratch matches 7 store result score #ct_keepinv ch_scratch run gamerule keepInventory
gamerule keepInventory false
tp @a @s
ctphys chainall
scoreboard players set #active_mode ch_scratch 7
tellraw @a [{"text":"[Chained Together] ","color":"gold","bold":true},{"text":"The whole group is chained. Max 8 blocks apart - pull together, fall together. Hold R to pull a partner.","color":"white"}]
title @a title {"text":"⛓ CHAINED TOGETHER","color":"gold","bold":true}
title @a subtitle {"text":"Stick together!","color":"yellow"}
playsound minecraft:block.chain.place master @a ~ ~ ~ 1 1

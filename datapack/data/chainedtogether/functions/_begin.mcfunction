scoreboard players set #active_mode ch_scratch 7
# Everyone goes to whoever ran the command, then the whole group is chained (every pair linked).
# Physics (max length, pull, net forces) comes from the server-side ctphys mod (server/ctphys).
tp @a @s
ctphys chainall
tellraw @a [{"text":"[Chained Together] ","color":"gold","bold":true},{"text":"The whole group is chained. Max 8 blocks apart - pull together, fall together. Hold R to pull a partner.","color":"white"}]
title @a title {"text":"⛓ CHAINED TOGETHER","color":"gold","bold":true}
title @a subtitle {"text":"Stick together!","color":"yellow"}
playsound minecraft:block.chain.place master @a ~ ~ ~ 1 1

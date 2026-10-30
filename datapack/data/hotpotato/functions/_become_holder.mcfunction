tag @s add hp_holder
title @s title [{"text":"HOT POTATO!","color":"gold","bold":true}]
title @s subtitle [{"text":"Pass it - hit someone before it blows!","color":"red"}]
execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 0.6
tellraw @a [{"text":"[Hot Potato] ","color":"gold","bold":true},{"selector":"@s","color":"yellow","bold":true},{"text":" has the potato!","color":"white"}]

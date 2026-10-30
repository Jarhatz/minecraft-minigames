execute as @a[tag=hp_holder] run function hotpotato:_drop_holder
tag @s add hp_holder
title @s title [{"text":"HOT POTATO!","color":"gold","bold":true}]
title @s subtitle [{"text":"Pass it - hit someone!","color":"red"}]
execute as @a at @s run playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 0.9
tellraw @a [{"text":"[Hot Potato] ","color":"gold","bold":true},{"text":"Passed to ","color":"gray"},{"selector":"@s","color":"yellow","bold":true},{"text":"!","color":"gray"}]
scoreboard players set #hp_cd ch_scratch 15

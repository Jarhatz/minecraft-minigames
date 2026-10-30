function circle_hunt:reset
scoreboard players set #hp_active ch_scratch 1
gamerule doImmediateRespawn true
worldborder center 0 0
worldborder set 90
team empty hp_it
tag @a add hp_alive
tag @a remove hp_holder
scoreboard players set @a hp_lives 3
scoreboard objectives modify hp_lives displayname [{"text":"🥔 Lives Left","color":"gold","bold":true}]
scoreboard objectives setdisplay sidebar hp_lives
give @a minecraft:iron_pickaxe 1
give @a minecraft:cobblestone 128
give @a minecraft:dirt 64
effect give @a minecraft:resistance 999999 1 true
effect give @a minecraft:regeneration 999999 0 true
effect give @a minecraft:saturation 999999 20 true
spreadplayers 0 0 12 40 false @a[tag=hp_alive]
execute as @a[tag=hp_alive] store result score @s hp_hplast run data get entity @s Health 1
bossbar set hotpotato:fuse players @a
title @a title [{"text":"HOT POTATO","color":"gold","bold":true}]
title @a subtitle [{"text":"3 lives each - don't be caught holding the bomb!","color":"red"}]
tellraw @a [{"text":"[Hot Potato] ","color":"gold","bold":true},{"text":"Pass the potato by hitting another player. When the fuse blows, whoever holds it loses a life. Last one standing wins!","color":"white"}]
function hotpotato:_round
scoreboard players set #active_mode ch_scratch 5

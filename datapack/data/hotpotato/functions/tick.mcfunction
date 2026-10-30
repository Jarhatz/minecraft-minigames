execute as @a[tag=hp_alive] store result score @s hp_hp run data get entity @s Health 10
execute if score #hp_cd ch_scratch matches ..0 as @a[tag=hp_alive,tag=!hp_holder] at @s if score @s hp_hp < @s hp_hplast if entity @a[tag=hp_holder,distance=..4.5] run function hotpotato:_receive
execute as @a[tag=hp_alive] if score @s hp_hp matches ..80 run effect give @s minecraft:instant_health 1 3 true
execute as @a[tag=hp_alive] store result score @s hp_hplast run data get entity @s Health 10
scoreboard players remove #hp_cd ch_scratch 1
scoreboard players remove #hp_fuse ch_scratch 1
execute store result bossbar hotpotato:fuse value run scoreboard players get #hp_fuse ch_scratch
title @a[tag=hp_holder] actionbar [{"text":"🥔 YOU HAVE THE POTATO - PASS IT!","color":"red","bold":true}]
effect give @a[tag=hp_alive] minecraft:saturation 5 20 true
effect give @a[tag=hp_alive,tag=!hp_holder] minecraft:glowing 1 0 true
effect clear @a[tag=hp_holder] minecraft:glowing
execute as @a[tag=hp_holder] at @s anchored eyes run particle minecraft:dust 1 0 0 1.2 ^ ^1.6 ^2.2 0.5 0.12 0.05 0 4 force @s
execute as @a[tag=hp_holder] at @s anchored eyes run particle minecraft:dust 1 0 0 1.2 ^ ^-1.6 ^2.2 0.5 0.12 0.05 0 4 force @s
execute as @a[tag=hp_holder] at @s anchored eyes run particle minecraft:dust 1 0 0 1.2 ^2 ^ ^2.2 0.05 0.5 0.05 0 4 force @s
execute as @a[tag=hp_holder] at @s anchored eyes run particle minecraft:dust 1 0 0 1.2 ^-2 ^ ^2.2 0.05 0.5 0.05 0 4 force @s
scoreboard players add #hp_beat ch_scratch 1
execute if score #hp_fuse ch_scratch matches 400.. if score #hp_beat ch_scratch matches 30.. run function hotpotato:_beat
execute if score #hp_fuse ch_scratch matches 250..399 if score #hp_beat ch_scratch matches 24.. run function hotpotato:_beat
execute if score #hp_fuse ch_scratch matches 150..249 if score #hp_beat ch_scratch matches 18.. run function hotpotato:_beat
execute if score #hp_fuse ch_scratch matches 80..149 if score #hp_beat ch_scratch matches 12.. run function hotpotato:_beat
execute if score #hp_fuse ch_scratch matches 40..79 if score #hp_beat ch_scratch matches 8.. run function hotpotato:_beat
execute if score #hp_fuse ch_scratch matches 20..39 if score #hp_beat ch_scratch matches 5.. run function hotpotato:_beat
execute if score #hp_fuse ch_scratch matches ..19 if score #hp_beat ch_scratch matches 3.. run function hotpotato:_beat
execute if score #hp_fuse ch_scratch matches ..0 run function hotpotato:_detonate

scoreboard players add #ct_n ch_scratch 1
scoreboard players operation @s ct_id = #ct_n ch_scratch
summon minecraft:marker ~ ~ ~ {Tags:["ct_pin","ct_newpin"]}
scoreboard players operation @e[type=minecraft:marker,tag=ct_newpin] ct_id = #ct_n ch_scratch
tag @e[type=minecraft:marker,tag=ct_newpin] remove ct_newpin

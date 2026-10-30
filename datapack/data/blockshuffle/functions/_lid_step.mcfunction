scoreboard players operation @s bs_lid = #bs_next ch_scratch
scoreboard players add #bs_next ch_scratch 1
tag @s add bs_lidset
execute if entity @a[tag=bs_alive,tag=!bs_lidset] run function blockshuffle:_lid_assign

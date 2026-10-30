setblock ~ ~ ~ minecraft:chest{LootTable:"circle_hunt:supply_drop"}
execute store result score #px ch_scratch run data get entity @s Pos[0]
execute store result score #py ch_scratch run data get entity @s Pos[1]
execute store result score #pz ch_scratch run data get entity @s Pos[2]
execute store success score #drop_ok ch_scratch if block ~ ~ ~ minecraft:chest

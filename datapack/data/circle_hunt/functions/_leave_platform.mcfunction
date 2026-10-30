effect give @s minecraft:slow_falling 10 0 true
effect give @s minecraft:resistance 10 4 true
execute if score #mode ch_scratch matches 1 if score @s ch_id matches 0.. at @s run function circle_hunt:_mole_pocket
execute if score #mode ch_scratch matches 1 unless score @s ch_id matches 0.. run function circle_hunt:_classic_scatter
execute unless score #mode ch_scratch matches 1 run function circle_hunt:_classic_scatter

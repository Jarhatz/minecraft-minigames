effect give @s minecraft:regeneration 999999 0 true
effect give @s minecraft:fire_resistance 999999 0 true
effect give @s minecraft:glowing 999999 0 true
execute if score #bh_hunters ch_scratch matches ..2 run effect give @s minecraft:strength 999999 0 true
execute if score #bh_hunters ch_scratch matches 3..4 run effect give @s minecraft:strength 999999 1 true
execute if score #bh_hunters ch_scratch matches 5..6 run effect give @s minecraft:strength 999999 2 true
execute if score #bh_hunters ch_scratch matches 7.. run effect give @s minecraft:strength 999999 3 true
execute if score #bh_hunters ch_scratch matches ..3 run effect give @s minecraft:speed 999999 0 true
execute if score #bh_hunters ch_scratch matches 4.. run effect give @s minecraft:speed 999999 1 true
execute if score #bh_hunters ch_scratch matches 3..5 run effect give @s minecraft:resistance 999999 0 true
execute if score #bh_hunters ch_scratch matches 6.. run effect give @s minecraft:resistance 999999 1 true

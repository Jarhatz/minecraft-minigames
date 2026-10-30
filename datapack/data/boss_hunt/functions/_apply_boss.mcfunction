execute if score #bh_hunters ch_scratch matches ..1 run attribute @s minecraft:generic.max_health base set 80
execute if score #bh_hunters ch_scratch matches 2 run attribute @s minecraft:generic.max_health base set 120
execute if score #bh_hunters ch_scratch matches 3 run attribute @s minecraft:generic.max_health base set 160
execute if score #bh_hunters ch_scratch matches 4 run attribute @s minecraft:generic.max_health base set 200
execute if score #bh_hunters ch_scratch matches 5 run attribute @s minecraft:generic.max_health base set 240
execute if score #bh_hunters ch_scratch matches 6 run attribute @s minecraft:generic.max_health base set 280
execute if score #bh_hunters ch_scratch matches 7.. run attribute @s minecraft:generic.max_health base set 320
execute if score #bh_hunters ch_scratch matches ..1 run attribute @s minecraft:generic.knockback_resistance base set 0.3
execute if score #bh_hunters ch_scratch matches 2 run attribute @s minecraft:generic.knockback_resistance base set 0.4
execute if score #bh_hunters ch_scratch matches 3 run attribute @s minecraft:generic.knockback_resistance base set 0.5
execute if score #bh_hunters ch_scratch matches 4 run attribute @s minecraft:generic.knockback_resistance base set 0.6
execute if score #bh_hunters ch_scratch matches 5 run attribute @s minecraft:generic.knockback_resistance base set 0.7
execute if score #bh_hunters ch_scratch matches 6 run attribute @s minecraft:generic.knockback_resistance base set 0.8
execute if score #bh_hunters ch_scratch matches 7.. run attribute @s minecraft:generic.knockback_resistance base set 0.85
team join bh_boss @s
function boss_hunt:_buff_refresh
effect give @s minecraft:instant_health 1 100 true
give @s minecraft:netherite_sword{Enchantments:[{id:"minecraft:sharpness",lvl:2s}],Unbreakable:1b,display:{Name:'{"text":"Boss Cleaver","color":"dark_red","italic":false,"bold":true}'}} 1
give @s minecraft:iron_pickaxe 1
give @s minecraft:golden_apple 8
give @s minecraft:cooked_beef 32

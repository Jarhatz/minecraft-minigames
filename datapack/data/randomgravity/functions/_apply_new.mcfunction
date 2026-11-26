scoreboard players operation @s rg_dir = @s rg_next
function randomgravity:_apply
title @s times 5 50 10
execute if score @s rg_dir matches 0 run title @s subtitle [{"text": "Gravity is now ", "color": "gray"}, {"text": "⬇ DOWN", "color": "green", "bold": true}]
execute if score @s rg_dir matches 1 run title @s subtitle [{"text": "Gravity is now ", "color": "gray"}, {"text": "⬆ UP", "color": "aqua", "bold": true}]
execute if score @s rg_dir matches 2 run title @s subtitle [{"text": "Gravity is now ", "color": "gray"}, {"text": "▲ NORTH", "color": "red", "bold": true}]
execute if score @s rg_dir matches 3 run title @s subtitle [{"text": "Gravity is now ", "color": "gray"}, {"text": "▼ SOUTH", "color": "gold", "bold": true}]
execute if score @s rg_dir matches 4 run title @s subtitle [{"text": "Gravity is now ", "color": "gray"}, {"text": "► EAST", "color": "yellow", "bold": true}]
execute if score @s rg_dir matches 5 run title @s subtitle [{"text": "Gravity is now ", "color": "gray"}, {"text": "◄ WEST", "color": "light_purple", "bold": true}]
title @s title [{"text":"GRAVITY SHIFTED","color":"light_purple","bold":true}]
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.6

execute if score #rg_active ch_scratch matches 1 if score #rg_timer ch_scratch matches 201.. run scoreboard players set #rg_timer ch_scratch 201
execute unless score #rg_active ch_scratch matches 1 run tellraw @s [{"text":"[Random Gravity] ","color":"light_purple","bold":true},{"text":"Not running.","color":"gray"}]

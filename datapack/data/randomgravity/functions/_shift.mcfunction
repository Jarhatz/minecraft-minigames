execute as @a at @s run function randomgravity:_apply_new
scoreboard players operation #rg_timer ch_scratch = #rg_interval ch_scratch
tellraw @a [{"text":"[Random Gravity] ","color":"light_purple","bold":true},{"text":"Gravity has shifted!","color":"white"}]

scoreboard players set #rg_deck ch_scratch 0
scoreboard players set #rg_t0 ch_scratch 0
scoreboard players set #rg_t1 ch_scratch 0
scoreboard players set #rg_t2 ch_scratch 0
scoreboard players set #rg_t3 ch_scratch 0
scoreboard players set #rg_t4 ch_scratch 0
scoreboard players set #rg_t5 ch_scratch 0
execute as @a at @s run function randomgravity:_assign_one
title @a times 5 70 10
execute as @a run function randomgravity:_warn_title
tellraw @a [{"text":"[Random Gravity] ","color":"light_purple","bold":true},{"text":"Gravity shifts in 10 seconds! Next directions:","color":"white"}]
execute as @a run function randomgravity:_chat_line
execute as @a at @s run playsound minecraft:block.beacon.power_select master @s ~ ~ ~ 1 0.8

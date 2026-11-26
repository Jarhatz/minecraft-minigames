scoreboard players operation @s rg_next = #rg_r ch_scratch
scoreboard players add #rg_deck ch_scratch 1
execute if score #rg_r ch_scratch matches 0 run scoreboard players set #rg_t0 ch_scratch 1
execute if score #rg_r ch_scratch matches 1 run scoreboard players set #rg_t1 ch_scratch 1
execute if score #rg_r ch_scratch matches 2 run scoreboard players set #rg_t2 ch_scratch 1
execute if score #rg_r ch_scratch matches 3 run scoreboard players set #rg_t3 ch_scratch 1
execute if score #rg_r ch_scratch matches 4 run scoreboard players set #rg_t4 ch_scratch 1
execute if score #rg_r ch_scratch matches 5 run scoreboard players set #rg_t5 ch_scratch 1
scoreboard players set #rg_ok ch_scratch 1

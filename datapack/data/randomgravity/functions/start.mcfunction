execute unless score #active_mode ch_scratch matches 0 run function minigames:_busy
execute if score #active_mode ch_scratch matches 0 run scoreboard players set #rg_interval ch_scratch 6000
execute if score #active_mode ch_scratch matches 0 run function randomgravity:_begin

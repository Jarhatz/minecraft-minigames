execute unless score #active_mode ch_scratch matches 0 run function minigames:_busy
scoreboard players set #bh_players ch_scratch 0
execute as @a run scoreboard players add #bh_players ch_scratch 1
execute if score #active_mode ch_scratch matches 0 if score #bh_players ch_scratch matches ..1 run tellraw @a [{"text":"[Boss Hunt] ","color":"dark_red","bold":true},{"text":"Need at least 2 players to start. Aborting.","color":"red"}]
execute if score #active_mode ch_scratch matches 0 if score #bh_players ch_scratch matches 2.. run function boss_hunt:_begin

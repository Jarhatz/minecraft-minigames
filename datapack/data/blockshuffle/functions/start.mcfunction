execute unless score #active_mode ch_scratch matches 0 run function minigames:_busy
scoreboard players set #bs_players ch_scratch 0
execute as @a run scoreboard players add #bs_players ch_scratch 1
execute if score #active_mode ch_scratch matches 0 if score #bs_players ch_scratch matches ..1 run tellraw @a [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Need at least 2 players to start. Aborting.","color":"red"}]
execute if score #active_mode ch_scratch matches 0 if score #bs_players ch_scratch matches 2.. run function blockshuffle:_go

scoreboard players add #rot ch_scratch 1
execute if score #rot ch_scratch matches 5400 run tellraw @a [{"text":"[Circle Hunt] ","color":"green","bold":true},{"text":"Scheduled target rotation in 30 seconds...","color":"yellow"}]
execute if score #rot ch_scratch matches 6000.. run function circle_hunt:scramble
scoreboard players add #bounty_t ch_scratch 1
execute if score #bounty_t ch_scratch matches 600.. run function circle_hunt:_refresh_bounty
scoreboard players add #drop_t ch_scratch 1
execute if score #drop_t ch_scratch matches 4800.. run function circle_hunt:_supply_drop
execute if score #globals ch_season matches 0 run scoreboard players add #season_roll ch_scratch 1
execute if score #globals ch_season matches 0 if score #season_roll ch_scratch matches 1200.. run function circle_hunt:_roll_season
execute if score #globals ch_season matches 1 run function circle_hunt:_season_tick
execute if score #globals ch_invert matches 0 run scoreboard players add #invert_roll ch_scratch 1
execute if score #globals ch_invert matches 0 if score #invert_roll ch_scratch matches 1200.. run function circle_hunt:_roll_invert
execute if score #globals ch_invert matches 1 run function circle_hunt:_invert_tick

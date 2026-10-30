scoreboard players remove #season_left ch_scratch 1
execute if score #season_left ch_scratch matches ..0 run function circle_hunt:_season_end

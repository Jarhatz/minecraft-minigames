scoreboard players remove #invert_left ch_scratch 1
execute store result bossbar circle_hunt:inversion value run scoreboard players get #invert_left ch_scratch
bossbar set circle_hunt:inversion players @a
execute if score #invert_left ch_scratch matches ..0 run function circle_hunt:_invert_end

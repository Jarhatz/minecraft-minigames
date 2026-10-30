scoreboard players set #c2 ch_scratch 2
scoreboard players set #cn1 ch_scratch -1
execute store result score #brad ch_scratch run worldborder get
scoreboard players operation #brad ch_scratch /= #c2 ch_scratch
execute as @a[gamemode=survival] at @s run function circle_hunt:_rescue_outside_p

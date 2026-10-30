scoreboard players set @s ch_peek_cd 100
execute if score #globals ch_invert matches 1 run tellraw @s [{"text":"[Intel] ","color":"red","bold":true},{"text":"Signal scrambled — INVERSION active.","color":"dark_purple"}]
execute if score #globals ch_invert matches 0 if score @s ch_target matches 0 run function circle_hunt:_peek_target_0
execute if score #globals ch_invert matches 0 if score @s ch_target matches 1 run function circle_hunt:_peek_target_1
execute if score #globals ch_invert matches 0 if score @s ch_target matches 2 run function circle_hunt:_peek_target_2
execute if score #globals ch_invert matches 0 if score @s ch_target matches 3 run function circle_hunt:_peek_target_3
execute if score #globals ch_invert matches 0 if score @s ch_target matches 4 run function circle_hunt:_peek_target_4
execute if score #globals ch_invert matches 0 if score @s ch_target matches 5 run function circle_hunt:_peek_target_5
execute if score #globals ch_invert matches 0 if score @s ch_target matches 6 run function circle_hunt:_peek_target_6
execute if score #globals ch_invert matches 0 if score @s ch_target matches 7 run function circle_hunt:_peek_target_7

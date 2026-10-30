tag @a[scores={ch_id=0..}] add ch_unpicked
scoreboard players set #globals ch_next_id 0
function circle_hunt:_scramble_step
scoreboard players operation #globals ch_num_players = #globals ch_next_id
execute as @a[scores={ch_id=0..}] run function circle_hunt:_assign_target_to_self
function circle_hunt:_bake_bossbars
scoreboard players set #rot ch_scratch 0
tellraw @a [{"text":"[Circle Hunt] ","color":"green","bold":true},{"text":"TARGETS SCRAMBLED — check your boss bar.","color":"yellow","bold":true}]
playsound minecraft:block.bell.use player @a ~ ~ ~ 1 0.8

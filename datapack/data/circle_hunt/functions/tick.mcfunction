execute as @a unless score @s ch_points matches -2147483648.. run scoreboard players set @s ch_points 0
execute if score #mode ch_scratch matches 1 as @a[scores={ch_id=0..},nbt=!{Dimension:"circle_hunt:mole"}] run function circle_hunt:_mole_pocket
function circle_hunt:handle_deaths
scoreboard players add #tick ch_scratch 1
execute if score #tick ch_scratch matches 20.. run function circle_hunt:update_compasses
execute if score #tick ch_scratch matches 20.. if score #prox_on ch_scratch matches 1 if score #globals ch_num_players matches 2.. run function circle_hunt:_prox_check
execute if score #tick ch_scratch matches 20.. run function circle_hunt:_rescue_outside
execute if score #tick ch_scratch matches 20.. if score #mode ch_scratch matches 1 run effect give @a[scores={ch_id=0..},gamemode=survival] minecraft:night_vision 16 0 true
execute if score #bs_active ch_scratch matches 1 run function blockshuffle:tick
execute if score #bh_active ch_scratch matches 1 run function boss_hunt:tick
execute if score #hp_active ch_scratch matches 1 run function hotpotato:tick
execute if score #tick ch_scratch matches 20.. if score #upgrader_on ch_scratch matches 1 as @a[gamemode=survival] unless entity @s[nbt={Inventory:[{id:"upgrader:upgrader"}]}] run give @s upgrader:upgrader
execute if score #tick ch_scratch matches 20.. if score #upgrader_on ch_scratch matches 0 run clear @a upgrader:upgrader
execute if score #tick ch_scratch matches 20.. run scoreboard players set #tick ch_scratch 0
function circle_hunt:ensure_compass
function circle_hunt:check_winner
scoreboard players remove @a[scores={ch_peek_cd=1..}] ch_peek_cd 1
execute as @a[scores={ch_id=0..},nbt={SelectedItem:{id:"minecraft:compass"}},predicate=circle_hunt:sneaking] unless score @s ch_peek_cd matches 1.. run function circle_hunt:_peek_target
execute if score #globals ch_num_players matches 2.. run function circle_hunt:_round_timers

function circle_hunt:reset
worldborder center 0 0
worldborder set 500
tag @a add ch_unpicked
scoreboard players set #globals ch_next_id 0
function circle_hunt:_scramble_step
scoreboard players operation #globals ch_num_players = #globals ch_next_id
execute as @a[scores={ch_id=0..}] run function circle_hunt:_assign_target_to_self
scoreboard players set @a ch_points 0
scoreboard players set @a ch_kills 0
execute as @a run tellraw @a [{"text":"[Debug] "},{"selector":"@s","color":"yellow"},{"text":" id="},{"score":{"name":"@s","objective":"ch_id"},"color":"aqua"},{"text":" target="},{"score":{"name":"@s","objective":"ch_target"},"color":"aqua"}]
scoreboard players set #win ch_scratch 25
scoreboard players set #rot ch_scratch 0
scoreboard players set #bounty_t ch_scratch 0
scoreboard players set #drop_t ch_scratch 0
scoreboard players set #season_roll ch_scratch 0
scoreboard players set #season_left ch_scratch 0
scoreboard players set #invert_roll ch_scratch 0
scoreboard players set #invert_left ch_scratch 0
scoreboard players set #globals ch_season 0
scoreboard players set #globals ch_invert 0
tag @a remove ch_bounty
tag @a remove ch_prox_active
tag @a remove ch_prox_was
tag @a remove ch_prox_elig
function circle_hunt:_bake_bossbars
scoreboard objectives setdisplay sidebar ch_points
execute as @a at @s run function circle_hunt:give_compass

scoreboard players operation #globals ch_dead_id = @s ch_id
scoreboard players set #globals ch_kill_awarded 0
scoreboard players set #globals ch_bounty_dead 0
execute if entity @s[tag=ch_bounty] run scoreboard players set #globals ch_bounty_dead 1
tellraw @a [{"selector":"@s","color":"red","bold":true},{"text":" died.","color":"gray"}]
execute if score #globals ch_season matches 1 as @a[scores={ch_kills=1..}] run function circle_hunt:_award_direct
execute if score #globals ch_season matches 1 unless entity @a[scores={ch_kills=1..}] as @a run function circle_hunt:_try_award_stalker
execute if score #globals ch_season matches 0 as @a run function circle_hunt:_try_award_stalker
scoreboard players set @a ch_kills 0
execute if score #globals ch_kill_awarded matches 0 run tellraw @a [{"text":"  (no scorer for this death)","color":"gray"}]
execute if score #globals ch_kill_awarded matches 1 run function circle_hunt:_shrink_border
execute if score #globals ch_kill_awarded matches 1 run function circle_hunt:scramble

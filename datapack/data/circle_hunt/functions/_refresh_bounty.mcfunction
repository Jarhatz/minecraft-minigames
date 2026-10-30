scoreboard players set #bounty_t ch_scratch 0
scoreboard players set #max ch_scratch 0
scoreboard players operation #max ch_scratch > @a[scores={ch_id=0..}] ch_points
tag @a remove ch_bounty
execute if score #max ch_scratch matches 2.. as @a[scores={ch_id=0..}] if score @s ch_points = #max ch_scratch run tag @s add ch_bounty
execute as @a[tag=ch_bounty] at @s run function circle_hunt:_bounty_ping

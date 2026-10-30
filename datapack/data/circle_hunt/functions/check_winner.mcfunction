execute as @a[scores={ch_points=1..}] if score @s ch_points >= #win ch_scratch at @s run function circle_hunt:_announce_winner

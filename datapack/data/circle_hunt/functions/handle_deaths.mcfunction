execute as @a[scores={ch_died=1..}] at @s run function circle_hunt:_process_death
scoreboard players set @a[scores={ch_died=1..}] ch_died 0

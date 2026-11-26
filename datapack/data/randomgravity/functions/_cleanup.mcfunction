scoreboard players set #rg_active ch_scratch 0
scoreboard players set #active_mode ch_scratch 0
bossbar set randomgravity:timer players
execute as @a run function randomgravity:_clear_anchors
scoreboard players set @a rg_dir 0
scoreboard players set @a rg_next 0
effect give @a minecraft:slow_falling 8 0 true
title @a clear

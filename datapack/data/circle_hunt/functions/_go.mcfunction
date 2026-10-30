function circle_hunt:_start_shared
scoreboard players set #mode ch_scratch 0
effect give @a minecraft:slow_falling 10 0 true
effect give @a minecraft:fire_resistance 10 0 true
effect give @a minecraft:resistance 10 4 true
execute store success score #globals ch_spread_ok run spreadplayers 0 0 70 220 false @a
execute if score #globals ch_spread_ok matches 0..0 run function circle_hunt:_fallback_tp
execute as @a at @s run function circle_hunt:_summon_animals
give @a[scores={ch_id=0..}] yyzsbackpack:iron_backpack 1
title @a title [{"text":"CIRCLE HUNT","color":"red","bold":true}]
title @a subtitle [{"text":"First to 25 points wins","color":"gold"}]
tellraw @a [{"text":"[Circle Hunt] ","color":"green","bold":true},{"text":"Round started. Boss bar = your target. Compass slot 9 tracks them.","color":"white"}]
tellraw @a [{"text":"  • Every kill: targets re-scramble + zone shrinks 50 blocks","color":"gray"}]
tellraw @a [{"text":"  • Direct kills score 2, other deaths of your target score 1","color":"gray"}]
tellraw @a [{"text":"  • Leader (2+ pts) becomes THE BOUNTY: tracked publicly, worth double","color":"gray"}]
tellraw @a [{"text":"  • Watch for supply drops, OPEN SEASON and INVERSION events","color":"gray"}]
scoreboard players set #active_mode ch_scratch 1

scoreboard players set #pmax ch_scratch 0
scoreboard players set #pmin ch_scratch 999999
scoreboard players operation #pmax ch_scratch > @a[scores={ch_id=0..}] ch_points
scoreboard players operation #pmin ch_scratch < @a[scores={ch_id=0..}] ch_points
tag @a remove ch_prox_elig
execute if score #pmax ch_scratch = #pmin ch_scratch run tag @a[scores={ch_id=0..}] add ch_prox_elig
execute unless score #pmax ch_scratch = #pmin ch_scratch as @a[scores={ch_id=0..}] if score @s ch_points < #pmax ch_scratch run tag @s add ch_prox_elig
tag @a remove ch_prox_active
execute as @a[scores={ch_target=0}] at @s run tag @a[scores={ch_id=0},distance=..50,tag=ch_prox_elig] add ch_prox_active
execute as @a[scores={ch_target=1}] at @s run tag @a[scores={ch_id=1},distance=..50,tag=ch_prox_elig] add ch_prox_active
execute as @a[scores={ch_target=2}] at @s run tag @a[scores={ch_id=2},distance=..50,tag=ch_prox_elig] add ch_prox_active
execute as @a[scores={ch_target=3}] at @s run tag @a[scores={ch_id=3},distance=..50,tag=ch_prox_elig] add ch_prox_active
execute as @a[scores={ch_target=4}] at @s run tag @a[scores={ch_id=4},distance=..50,tag=ch_prox_elig] add ch_prox_active
execute as @a[scores={ch_target=5}] at @s run tag @a[scores={ch_id=5},distance=..50,tag=ch_prox_elig] add ch_prox_active
execute as @a[scores={ch_target=6}] at @s run tag @a[scores={ch_id=6},distance=..50,tag=ch_prox_elig] add ch_prox_active
execute as @a[scores={ch_target=7}] at @s run tag @a[scores={ch_id=7},distance=..50,tag=ch_prox_elig] add ch_prox_active
execute as @a[tag=ch_prox_active,tag=!ch_prox_was] run title @s title [{"text":"!","color":"dark_red","bold":true}]
execute as @a[tag=ch_prox_active,tag=!ch_prox_was] run title @s subtitle [{"text":"Your hunter is close...","color":"red"}]
execute as @a[tag=ch_prox_active,tag=!ch_prox_was] at @s run playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 1 0.8
title @a[tag=ch_prox_active] actionbar [{"text":"⚠ HUNTER WITHIN 50 BLOCKS ⚠","color":"red","bold":true}]
execute as @a[tag=ch_prox_active] at @s run playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 0.4 1.2
execute as @a[tag=ch_prox_was,tag=!ch_prox_active] run title @s actionbar [{"text":"Your hunter has slipped beyond 50 blocks","color":"gray"}]
tag @a remove ch_prox_was
tag @a[tag=ch_prox_active] add ch_prox_was

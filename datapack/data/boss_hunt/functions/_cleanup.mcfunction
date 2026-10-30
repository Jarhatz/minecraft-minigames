scoreboard players set #bh_active ch_scratch 0
scoreboard players set #active_mode ch_scratch 0
gamerule doImmediateRespawn false
bossbar set boss_hunt:boss players
bossbar set boss_hunt:timer players
gamemode survival @a
clear @a
execute if score #upgrader_on ch_scratch matches 1 run give @a upgrader:upgrader
effect clear @a
execute as @a run attribute @s minecraft:generic.max_health base set 20
execute as @a run attribute @s minecraft:generic.knockback_resistance base set 0
effect give @a minecraft:instant_health 1 20 true
effect give @a minecraft:slow_falling 8 0 true
worldborder set 59999968
tag @a remove bh_lockout
team empty bh_boss
tag @a remove bh_boss
tag @a remove bh_hunter

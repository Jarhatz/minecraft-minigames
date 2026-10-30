scoreboard players set #hp_active ch_scratch 0
scoreboard players set #active_mode ch_scratch 0
gamerule doImmediateRespawn false
bossbar set hotpotato:fuse players
effect clear @a minecraft:glowing
effect clear @a minecraft:saturation
scoreboard objectives setdisplay sidebar
gamemode survival @a
effect give @a minecraft:instant_health 1 20 true
effect give @a minecraft:slow_falling 8 0 true
worldborder set 59999968
team empty hp_it
tag @a remove hp_alive
tag @a remove hp_holder

scoreboard players reset * ch_id
scoreboard players reset * ch_target
scoreboard players reset * ch_points
scoreboard players reset * ch_died
scoreboard players reset * ch_kills
scoreboard players reset #globals ch_next_id
scoreboard players reset #globals ch_num_players
scoreboard players reset #globals ch_dead_id
scoreboard players set #globals ch_season 0
scoreboard players set #globals ch_invert 0
tag @a remove ch_bounty
tag @a remove ch_unpicked
scoreboard players set #mode ch_scratch 0
effect give @a[nbt={Dimension:"circle_hunt:mole"}] minecraft:slow_falling 12 0 true
execute as @a[nbt={Dimension:"circle_hunt:mole"}] in minecraft:overworld run tp @s 0 320 0
scoreboard players set #bs_active ch_scratch 0
scoreboard players set #bh_active ch_scratch 0
execute as @a run attribute @s minecraft:generic.max_health base set 20
execute as @a run attribute @s minecraft:generic.knockback_resistance base set 0
team empty bh_boss
tag @a remove bh_boss
tag @a remove bh_hunter
tag @a remove bh_lockout
bossbar set boss_hunt:boss players
bossbar set boss_hunt:timer players
scoreboard players set #hp_active ch_scratch 0
tag @a remove hp_alive
tag @a remove hp_holder
team empty hp_it
bossbar set hotpotato:fuse players
effect clear @a minecraft:glowing
gamerule doImmediateRespawn false
bossbar set blockshuffle:timer players
scoreboard players set #active_mode ch_scratch 0
gamemode survival @a
tag @a remove bs_alive
tag @a remove bs_done
tag @a remove bs_elim
tag @a remove bs_late
tag @a remove bs_lidset
function blockshuffle:_teams_clear
scoreboard players reset * bs_display
scoreboard objectives setdisplay sidebar
kill @e[tag=ch_drop_marker]
clear @a
execute if score #upgrader_on ch_scratch matches 1 run give @a upgrader:upgrader
effect clear @a
effect give @a minecraft:instant_health 1 15 true
effect give @a minecraft:saturation 1 20 true
xp set @a 0 points
xp set @a 0 levels
worldborder center 0 0
worldborder set 500
bossbar set circle_hunt:hunt_0 players
bossbar set circle_hunt:hunt_1 players
bossbar set circle_hunt:hunt_2 players
bossbar set circle_hunt:hunt_3 players
bossbar set circle_hunt:hunt_4 players
bossbar set circle_hunt:hunt_5 players
bossbar set circle_hunt:hunt_6 players
bossbar set circle_hunt:hunt_7 players

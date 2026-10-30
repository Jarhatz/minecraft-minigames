scoreboard objectives add ch_id dummy
scoreboard objectives add ch_target dummy
scoreboard objectives add ch_points dummy {"text":"Circle Hunt","color":"gold","bold":true}
scoreboard objectives add ch_died deathCount
scoreboard objectives add ch_kills playerKillCount
scoreboard objectives add ch_next_id dummy
scoreboard objectives add ch_num_players dummy
scoreboard objectives add ch_dead_id dummy
scoreboard objectives add ch_kill_awarded dummy
scoreboard objectives add ch_spread_ok dummy
scoreboard objectives add ch_peek_cd dummy
scoreboard objectives add ch_scratch dummy
scoreboard objectives add ch_season dummy
scoreboard objectives add ch_invert dummy
scoreboard players set #two ch_scratch 2
scoreboard players set #win ch_scratch 25

worldborder center 0 0
execute unless score #bh_active ch_scratch matches 1 unless score #hp_active ch_scratch matches 1 unless score #globals ch_num_players matches 1.. run worldborder set 59999968
execute if score #globals ch_num_players matches 1.. run worldborder set 500
worldborder damage buffer 5
worldborder damage amount 0.4
worldborder warning distance 20
worldborder warning time 10

gamerule spawnRadius 10
gamerule doImmediateRespawn false
gamerule keepInventory true

bossbar add circle_hunt:hunt_0 [{"text":"Hunt: ","color":"red","bold":true}]
bossbar add circle_hunt:hunt_1 [{"text":"Hunt: ","color":"red","bold":true}]
bossbar add circle_hunt:hunt_2 [{"text":"Hunt: ","color":"red","bold":true}]
bossbar add circle_hunt:hunt_3 [{"text":"Hunt: ","color":"red","bold":true}]
bossbar add circle_hunt:hunt_4 [{"text":"Hunt: ","color":"red","bold":true}]
bossbar add circle_hunt:hunt_5 [{"text":"Hunt: ","color":"red","bold":true}]
bossbar add circle_hunt:hunt_6 [{"text":"Hunt: ","color":"red","bold":true}]
bossbar add circle_hunt:hunt_7 [{"text":"Hunt: ","color":"red","bold":true}]
bossbar set circle_hunt:hunt_0 color red
bossbar set circle_hunt:hunt_1 color red
bossbar set circle_hunt:hunt_2 color red
bossbar set circle_hunt:hunt_3 color red
bossbar set circle_hunt:hunt_4 color red
bossbar set circle_hunt:hunt_5 color red
bossbar set circle_hunt:hunt_6 color red
bossbar set circle_hunt:hunt_7 color red

tellraw @a [{"text":"[Circle Hunt] ","color":"green","bold":true},{"text":"Datapack loaded. Op: /function circle_hunt:start","color":"gray"}]
bossbar add circle_hunt:inversion [{"text":"INVERSION ","color":"dark_purple","bold":true},{"text":"— compass points at your HUNTER","color":"light_purple"}]
bossbar set circle_hunt:inversion color purple
bossbar set circle_hunt:inversion style progress
bossbar set circle_hunt:inversion max 3600
execute unless score #prox_on ch_scratch matches 0..1 run scoreboard players set #prox_on ch_scratch 1
execute unless score #upgrader_on ch_scratch matches 0..1 run scoreboard players set #upgrader_on ch_scratch 1
execute unless score #mode ch_scratch matches 0..1 run scoreboard players set #mode ch_scratch 0
execute unless score #drop_idx ch_scratch matches 0.. run scoreboard players set #drop_idx ch_scratch 0
scoreboard objectives add bs_block dummy
scoreboard players set #three ch_scratch 3
scoreboard players set #eight ch_scratch 8
scoreboard players set #prime31 ch_scratch 31
scoreboard players set #k1000 ch_scratch 1000
scoreboard players set #tiersize ch_scratch 16
scoreboard players set #neg1 ch_scratch -1
scoreboard players set #poolsize ch_scratch 153
scoreboard objectives add bs_last dummy
scoreboard objectives add bh_dead deathCount
scoreboard objectives add bh_lock dummy
execute unless score #bh_active ch_scratch matches 0..1 run scoreboard players set #bh_active ch_scratch 0
bossbar add boss_hunt:boss [{"text":"BOSS","color":"dark_red","bold":true}]
bossbar set boss_hunt:boss color red
bossbar set boss_hunt:boss style notched_10
bossbar add boss_hunt:timer [{"text":"Boss wins in...","color":"yellow","bold":true}]
bossbar set boss_hunt:timer color yellow
bossbar set boss_hunt:timer style progress
bossbar set boss_hunt:timer max 600
team add bh_boss
team modify bh_boss color red
scoreboard objectives add hp_hp dummy
scoreboard objectives add hp_hplast dummy
scoreboard objectives add hp_lives dummy
scoreboard players set #hp300 ch_scratch 300
scoreboard players set #hp1200 ch_scratch 1200
execute unless score #active_mode ch_scratch matches 0..5 run scoreboard players set #active_mode ch_scratch 0
execute unless score #hp_active ch_scratch matches 0..1 run scoreboard players set #hp_active ch_scratch 0
bossbar add hotpotato:fuse [{"text":"🥔 FUSE","color":"gold","bold":true}]
bossbar set hotpotato:fuse color red
bossbar set hotpotato:fuse style progress
bossbar set hotpotato:fuse max 3000
team add hp_it
team modify hp_it color gold
execute unless score #bs_active ch_scratch matches 0..1 run scoreboard players set #bs_active ch_scratch 0
scoreboard objectives add bs_display dummy [{"text":"BLOCK SHUFFLE","color":"gold","bold":true}]
scoreboard objectives add bs_spec trigger
scoreboard objectives add bs_died deathCount
scoreboard objectives add bs_lid dummy
function blockshuffle:_teams_init
bossbar add blockshuffle:timer [{"text":"BLOCK SHUFFLE","color":"gold","bold":true}]
bossbar set blockshuffle:timer color yellow
bossbar set blockshuffle:timer style progress
bossbar set blockshuffle:timer max 420

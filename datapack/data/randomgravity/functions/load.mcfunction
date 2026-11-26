scoreboard objectives add rg_dir dummy
scoreboard objectives add rg_next dummy
scoreboard objectives add rg_yaw dummy
scoreboard objectives add rg_h dummy
scoreboard players set #rg_six ch_scratch 6
scoreboard players set #rg_twenty ch_scratch 20
scoreboard players set #rg_1200 ch_scratch 1200
execute unless score #rg_active ch_scratch matches 0..1 run scoreboard players set #rg_active ch_scratch 0
execute unless score #rg_interval ch_scratch matches 1.. run scoreboard players set #rg_interval ch_scratch 6000
bossbar add randomgravity:timer [{"text":"🌀 GRAVITY SHIFT","color":"light_purple","bold":true}]
bossbar set randomgravity:timer color purple
bossbar set randomgravity:timer style progress

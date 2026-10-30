function circle_hunt:reset
scoreboard players set #bh_players ch_scratch 0
execute as @a run scoreboard players add #bh_players ch_scratch 1
scoreboard players set #bh_active ch_scratch 1
gamerule doImmediateRespawn true
worldborder center 0 0
worldborder set 250
scoreboard players operation #bh_hunters ch_scratch = #bh_players ch_scratch
scoreboard players remove #bh_hunters ch_scratch 1
scoreboard players set #bh_left ch_scratch 600
scoreboard players set #bh_ping ch_scratch 0
tag @a remove bh_boss
tag @a remove bh_hunter
tag @a remove bh_lockout
scoreboard players set @a bh_lock 0
tag @a add bh_hunter
execute as @r[tag=!bh_lastboss] run function boss_hunt:_make_boss
execute unless entity @a[tag=bh_boss] as @r run function boss_hunt:_make_boss
spreadplayers 0 0 30 110 false @a
execute as @a[tag=bh_boss] at @s run function boss_hunt:_apply_boss
execute as @a[tag=bh_hunter] run function boss_hunt:_hunter_kit
bossbar set boss_hunt:boss name [{"text":"BOSS: ","color":"dark_red","bold":true},{"selector":"@a[tag=bh_boss]","color":"red","bold":true}]
bossbar set boss_hunt:boss players @a
bossbar set boss_hunt:timer name [{"text":"⏳ Boss wins in ","color":"yellow","bold":true},{"score":{"name":"#bh_left","objective":"ch_scratch"},"color":"white"},{"text":"s","color":"yellow"}]
bossbar set boss_hunt:timer max 600
bossbar set boss_hunt:timer value 600
bossbar set boss_hunt:timer players @a
scoreboard players set @a bh_dead 0
title @a[tag=bh_hunter] title [{"text":"HUNT THE BOSS","color":"red","bold":true}]
title @a[tag=bh_hunter] subtitle [{"text":"Team up - take the boss down before time runs out","color":"gold"}]
title @a[tag=bh_boss] title [{"text":"YOU ARE THE BOSS","color":"dark_red","bold":true}]
title @a[tag=bh_boss] subtitle [{"text":"Survive 10 minutes against everyone","color":"gold"}]
tellraw @a [{"text":"[Boss Hunt] ","color":"dark_red","bold":true},{"selector":"@a[tag=bh_boss]","color":"red","bold":true},{"text":" is the BOSS! Everyone else: hunt them down.","color":"white"}]
tellraw @a [{"text":"  • Boss glows red and is scaled to the hunter count. Boss wins if it survives 10:00.","color":"gray"}]
tellraw @a [{"text":"  • Hunters respawn after a 5s lockout, back near the boss. Kill the boss to win.","color":"gray"}]
execute as @a at @s run playsound minecraft:entity.wither.spawn player @s ~ ~ ~ 1 0.8
scoreboard players set #active_mode ch_scratch 4

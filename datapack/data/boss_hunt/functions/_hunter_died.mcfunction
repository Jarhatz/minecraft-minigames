tag @s add bh_lockout
scoreboard players set @s bh_lock 100
gamemode spectator @s
title @s title [{"text":"DOWN","color":"red","bold":true}]
title @s subtitle [{"text":"Respawning in 5s...","color":"gray"}]
tellraw @a [{"text":"[Boss Hunt] ","color":"dark_red","bold":true},{"selector":"@s","color":"red"},{"text":" was slain by the boss!","color":"gray"}]

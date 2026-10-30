tag @s remove bh_lockout
scoreboard players set @s bh_lock 0
gamemode survival @s
effect give @s minecraft:resistance 3 4 true
effect give @s minecraft:slow_falling 5 0 true
execute at @a[tag=bh_boss,limit=1] run spreadplayers ~ ~ 4 12 false @s
title @s title [{"text":"GO!","color":"green","bold":true}]
title @s subtitle [{"text":"Back in the hunt","color":"green"}]

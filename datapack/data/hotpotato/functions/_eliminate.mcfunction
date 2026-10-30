tag @s remove hp_alive
tag @s remove hp_holder
team leave @s
effect clear @s minecraft:glowing
gamemode spectator @s
title @s title [{"text":"OUT","color":"dark_red","bold":true}]
title @s subtitle [{"text":"Out of lives - spectating","color":"gray"}]
tellraw @a [{"text":"[Hot Potato] ","color":"gold","bold":true},{"selector":"@s","color":"red"},{"text":" is out of lives - eliminated!","color":"gray"}]
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder player @s ~ ~ ~ 0.5 1.2

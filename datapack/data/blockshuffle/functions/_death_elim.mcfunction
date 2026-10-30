tag @s remove bs_alive
tag @s add bs_elim
gamemode spectator @s
team join bs_x @s
scoreboard players enable @s bs_spec
title @s title [{"text":"ELIMINATED","color":"dark_red","bold":true}]
title @s subtitle [{"text":"You died — spectating for the rest of the match","color":"red"}]
tellraw @a [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"selector":"@s","color":"red","bold":true},{"text":" died and is eliminated!","color":"white"}]
execute as @a at @s run playsound minecraft:entity.lightning_bolt.thunder player @s ~ ~ ~ 0.5 1.2
function blockshuffle:_spec_menu

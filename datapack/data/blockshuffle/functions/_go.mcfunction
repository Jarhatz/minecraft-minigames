function circle_hunt:reset
gamerule doImmediateRespawn true
scoreboard players set #bs_active ch_scratch 1
scoreboard players set #bs_round ch_scratch 0
tag @a remove bs_alive
tag @a remove bs_done
tag @a remove bs_elim
tag @a[gamemode=survival] add bs_alive
worldborder center 0 0
worldborder set 59999968
scoreboard players reset * bs_display
scoreboard players set @a[tag=bs_alive] bs_display 0
scoreboard objectives setdisplay sidebar bs_display
scoreboard players set #bs_next ch_scratch 0
tag @a remove bs_lidset
function blockshuffle:_lid_assign
spreadplayers 0 0 70 220 false @a[tag=bs_alive]
give @a[tag=bs_alive] yyzsbackpack:iron_backpack 1
title @a title [{"text":"BLOCK SHUFFLE","color":"gold","bold":true}]
title @a subtitle [{"text":"Stand on your block before time runs out!","color":"yellow"}]
tellraw @a [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Match started! Each round you get a random block.","color":"white"}]
tellraw @a [{"text":"  • Stand on your block (it must be directly under your feet) to be safe","color":"gray"}]
tellraw @a [{"text":"  • 5 minutes per round — fail and you are ELIMINATED","color":"gray"}]
tellraw @a [{"text":"  • Blocks get harder every 3 rounds. Last player standing wins!","color":"gray"}]
function blockshuffle:_round_start
scoreboard players set #active_mode ch_scratch 3

scoreboard players add #bs_round ch_scratch 1
worldborder set 59999968
scoreboard players set #bs_left ch_scratch 420
execute store result score #bs_gt ch_scratch run time query gametime
tag @a remove bs_done
execute as @a[tag=bs_alive] run function blockshuffle:_assign
bossbar set blockshuffle:timer name [{"text":"BLOCK SHUFFLE","color":"gold","bold":true},{"text":" - Round ","color":"white"},{"score":{"name":"#bs_round","objective":"ch_scratch"},"color":"yellow","bold":true}]
bossbar set blockshuffle:timer max 420
bossbar set blockshuffle:timer value 420
bossbar set blockshuffle:timer players @a
tellraw @a [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Round ","color":"white"},{"score":{"name":"#bs_round","objective":"ch_scratch"},"color":"yellow","bold":true},{"text":" - 7 minutes. Go!","color":"white"}]
execute as @a at @s run playsound minecraft:block.bell.use player @s ~ ~ ~ 1 1

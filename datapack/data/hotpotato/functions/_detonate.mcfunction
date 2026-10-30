scoreboard players remove @a[tag=hp_holder] hp_lives 1
execute at @a[tag=hp_holder] run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1 force
execute as @a at @a[tag=hp_holder] run playsound minecraft:entity.generic.explode player @s ~ ~ ~ 1 1
title @a[tag=hp_holder] title [{"text":"BOOM!","color":"red","bold":true}]
title @a[tag=hp_holder] subtitle [{"text":"You lost a life","color":"gray"}]
tellraw @a [{"text":"[Hot Potato] ","color":"gold","bold":true},{"text":"💥 ","color":"red"},{"selector":"@a[tag=hp_holder]","color":"yellow","bold":true},{"text":" blew up!","color":"white"}]
execute as @a[tag=hp_holder,scores={hp_lives=..0}] run function hotpotato:_eliminate
execute as @a[tag=hp_holder] run function hotpotato:_drop_holder
scoreboard players set #hp_alive_n ch_scratch 0
execute as @a[tag=hp_alive] run scoreboard players add #hp_alive_n ch_scratch 1
execute if score #hp_alive_n ch_scratch matches 2.. run function hotpotato:_round
execute if score #hp_alive_n ch_scratch matches ..1 run function hotpotato:_win

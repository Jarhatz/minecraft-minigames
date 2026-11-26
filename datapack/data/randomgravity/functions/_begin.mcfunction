scoreboard players set #rg_active ch_scratch 1
scoreboard players set #rg_hb ch_scratch 0
scoreboard players set #active_mode ch_scratch 6
scoreboard players operation #rg_timer ch_scratch = #rg_interval ch_scratch
scoreboard players set @a rg_dir 0
scoreboard players set @a rg_next 0
execute as @a run function randomgravity:_clear_anchors
execute store result bossbar randomgravity:timer max run scoreboard players get #rg_interval ch_scratch
execute store result bossbar randomgravity:timer value run scoreboard players get #rg_timer ch_scratch
bossbar set randomgravity:timer players @a
scoreboard players operation #rg_mins ch_scratch = #rg_interval ch_scratch
scoreboard players operation #rg_mins ch_scratch /= #rg_1200 ch_scratch
title @a title [{"text":"RANDOM GRAVITY","color":"light_purple","bold":true}]
title @a subtitle [{"text":"Your gravity changes on its own - adapt!","color":"gray"}]
tellraw @a [{"text":"[Random Gravity] ","color":"light_purple","bold":true},{"text":"Everyone gets their own gravity direction, reshuffled every ","color":"white"},{"score":{"name":"#rg_mins","objective":"ch_scratch"},"color":"yellow","bold":true},{"text":" min. A warning with YOUR next direction appears 10 seconds before each shift. Beat the game!","color":"white"}]
tellraw @a [{"text":"  Compass: ","color":"gray"},{"text":"NORTH = -Z, SOUTH = +Z, EAST = +X, WEST = -X","color":"gray","italic":true}]

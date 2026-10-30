scoreboard players set #bh_ping ch_scratch 0
execute store result score #bx ch_scratch run data get entity @a[tag=bh_boss,limit=1] Pos[0]
execute store result score #bz ch_scratch run data get entity @a[tag=bh_boss,limit=1] Pos[2]
title @a[tag=bh_hunter] actionbar [{"text":"Boss near ","color":"red"},{"score":{"name":"#bx","objective":"ch_scratch"},"color":"yellow","bold":true},{"text":" / ","color":"gray"},{"score":{"name":"#bz","objective":"ch_scratch"},"color":"yellow","bold":true}]

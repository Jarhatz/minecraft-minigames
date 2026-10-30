scoreboard players set #globals ch_season 1
scoreboard players set #season_left ch_scratch 2400
title @a title [{"text":"OPEN SEASON","color":"red","bold":true}]
title @a subtitle [{"text":"For 2 minutes, ANY kill scores 2 points","color":"gold"}]
tellraw @a [{"text":"[OPEN SEASON] ","color":"red","bold":true},{"text":"Any direct kill scores until the window closes. Trust NO ONE.","color":"yellow"}]
playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 1 1

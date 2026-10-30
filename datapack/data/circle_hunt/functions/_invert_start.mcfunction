scoreboard players set #globals ch_invert 1
scoreboard players set #invert_left ch_scratch 3600
bossbar set circle_hunt:inversion max 3600
bossbar set circle_hunt:inversion value 3600
bossbar set circle_hunt:inversion players @a
title @a title [{"text":"INVERSION","color":"dark_purple","bold":true}]
title @a subtitle [{"text":"Your compass now points at your HUNTER","color":"light_purple"}]
tellraw @a [{"text":"[INVERSION] ","color":"dark_purple","bold":true},{"text":"For 3 minutes your compass tracks the one hunting YOU. Run or ambush.","color":"light_purple"}]
playsound minecraft:block.end_portal.spawn player @a ~ ~ ~ 0.6 0.7

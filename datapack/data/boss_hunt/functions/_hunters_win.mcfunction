title @a title [{"text":"BOSS DOWN","color":"green","bold":true}]
title @a subtitle [{"text":"The hunters win!","color":"gold"}]
tellraw @a [{"text":"⚔ ","color":"green"},{"text":"The hunters have slain ","color":"gold"},{"selector":"@a[tag=bh_boss]","color":"red","bold":true},{"text":" — hunters win!","color":"gold"}]
playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 1 1
function boss_hunt:_cleanup

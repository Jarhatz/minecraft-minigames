title @a title [{"selector":"@a[tag=bh_boss]","color":"dark_red","bold":true},{"text":" SURVIVED","color":"dark_red","bold":true}]
title @a subtitle [{"text":"The boss wins!","color":"gold"}]
tellraw @a [{"text":"👑 ","color":"gold"},{"selector":"@a[tag=bh_boss]","color":"red","bold":true},{"text":" survived the hunt and WINS!","color":"gold"}]
playsound minecraft:entity.ender_dragon.death player @a ~ ~ ~ 1 1
function boss_hunt:_cleanup

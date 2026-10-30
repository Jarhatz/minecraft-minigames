title @a title [{"selector":"@s","color":"gold","bold":true},{"text":" WINS","color":"gold","bold":true}]
title @a subtitle [{"text":"Reached the point limit","color":"yellow"}]
tellraw @a [{"text":"🏆 ","color":"gold"},{"selector":"@s","color":"gold","bold":true},{"text":" wins the Circle Hunt with ","color":"yellow"},{"score":{"name":"@s","objective":"ch_points"},"color":"gold","bold":true},{"text":" points!","color":"yellow"}]
playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 1 1
function circle_hunt:reset

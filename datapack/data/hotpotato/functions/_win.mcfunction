execute as @a[tag=hp_alive,limit=1] run title @a title [{"selector":"@s","color":"gold","bold":true},{"text":" WINS","color":"gold","bold":true}]
execute as @a[tag=hp_alive,limit=1] run title @a subtitle [{"text":"Last one standing!","color":"yellow"}]
execute as @a[tag=hp_alive,limit=1] run tellraw @a [{"text":"🏆 ","color":"gold"},{"selector":"@s","color":"gold","bold":true},{"text":" wins Hot Potato!","color":"yellow"}]
execute unless entity @a[tag=hp_alive] run tellraw @a [{"text":"[Hot Potato] ","color":"gold","bold":true},{"text":"Everyone blew up - draw!","color":"gray"}]
playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 1 1
function hotpotato:_cleanup

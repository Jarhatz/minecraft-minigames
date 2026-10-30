scoreboard players set #bs_active ch_scratch 0
bossbar set blockshuffle:timer players
execute as @a[tag=bs_alive,limit=1] run title @a title [{"selector":"@s","color":"gold","bold":true},{"text":" WINS","color":"gold","bold":true}]
execute as @a[tag=bs_alive,limit=1] run title @a subtitle [{"text":"Last player standing","color":"yellow"}]
execute as @a[tag=bs_alive,limit=1] run tellraw @a [{"text":"🏆 ","color":"gold"},{"selector":"@s","color":"gold","bold":true},{"text":" wins Block Shuffle after ","color":"yellow"},{"score":{"name":"#bs_round","objective":"ch_scratch"},"color":"gold","bold":true},{"text":" rounds!","color":"yellow"}]
execute unless entity @a[tag=bs_alive] run title @a title [{"text":"DRAW","color":"gray","bold":true}]
execute unless entity @a[tag=bs_alive] run tellraw @a [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Everyone failed — it's a draw!","color":"gray"}]
playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 1 1
gamemode survival @a[tag=bs_elim]
gamemode survival @a[tag=bs_late]
tag @a remove bs_elim
tag @a remove bs_late
tag @a remove bs_alive
tag @a remove bs_done
tag @a remove bs_lidset
function blockshuffle:_teams_clear
scoreboard objectives setdisplay sidebar
scoreboard players set #active_mode ch_scratch 0

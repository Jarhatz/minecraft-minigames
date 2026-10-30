scoreboard players remove #bh_left ch_scratch 1
execute store result bossbar boss_hunt:timer value run scoreboard players get #bh_left ch_scratch
bossbar set boss_hunt:timer name [{"text":"⏳ Boss wins in ","color":"yellow","bold":true},{"score":{"name":"#bh_left","objective":"ch_scratch"},"color":"white"},{"text":"s","color":"yellow"}]
execute if score #bh_left ch_scratch matches 60 run tellraw @a [{"text":"[Boss Hunt] ","color":"dark_red","bold":true},{"text":"1 minute left — the boss is almost home free!","color":"red"}]
execute if score #bh_left ch_scratch matches 30 run tellraw @a [{"text":"[Boss Hunt] ","color":"dark_red","bold":true},{"text":"30 seconds!","color":"red","bold":true}]
scoreboard players add #bh_ping ch_scratch 1
execute if score #bh_ping ch_scratch matches 15.. run function boss_hunt:_ping
execute if score #bh_left ch_scratch matches ..0 run function boss_hunt:_boss_win

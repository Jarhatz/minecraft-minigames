scoreboard players set #hp_cd ch_scratch 20
scoreboard players set #hp_beat ch_scratch 0
execute store result score #hp_fuse ch_scratch run time query gametime
scoreboard players operation #hp_fuse ch_scratch %= #hp1200 ch_scratch
scoreboard players add #hp_fuse ch_scratch 1800
bossbar set hotpotato:fuse max 3000
execute store result bossbar hotpotato:fuse value run scoreboard players get #hp_fuse ch_scratch
bossbar set hotpotato:fuse players @a
execute as @r[tag=hp_alive] run function hotpotato:_become_holder
tellraw @a [{"text":"[Hot Potato] ","color":"gold","bold":true},{"text":"New round - the fuse is lit!","color":"white"}]

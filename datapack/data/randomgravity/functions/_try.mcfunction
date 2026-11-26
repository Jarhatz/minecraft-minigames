summon minecraft:marker ~ ~ ~ {Tags:["rg_rng"]}
execute store result score #rg_r ch_scratch run data get entity @e[type=minecraft:marker,tag=rg_rng,limit=1] UUID[0] 1
kill @e[type=minecraft:marker,tag=rg_rng]
scoreboard players operation #rg_r ch_scratch %= #rg_six ch_scratch
execute if score #rg_r ch_scratch matches ..-1 run scoreboard players add #rg_r ch_scratch 6
scoreboard players set #rg_ok ch_scratch 1
execute if score #rg_r ch_scratch matches 0 if score #rg_t0 ch_scratch matches 1 run scoreboard players set #rg_ok ch_scratch 0
execute if score #rg_r ch_scratch matches 1 if score #rg_t1 ch_scratch matches 1 run scoreboard players set #rg_ok ch_scratch 0
execute if score #rg_r ch_scratch matches 2 if score #rg_t2 ch_scratch matches 1 run scoreboard players set #rg_ok ch_scratch 0
execute if score #rg_r ch_scratch matches 3 if score #rg_t3 ch_scratch matches 1 run scoreboard players set #rg_ok ch_scratch 0
execute if score #rg_r ch_scratch matches 4 if score #rg_t4 ch_scratch matches 1 run scoreboard players set #rg_ok ch_scratch 0
execute if score #rg_r ch_scratch matches 5 if score #rg_t5 ch_scratch matches 1 run scoreboard players set #rg_ok ch_scratch 0
execute if score #rg_r ch_scratch = @s rg_dir run scoreboard players set #rg_ok ch_scratch 0
execute if score #rg_ok ch_scratch matches 1 run function randomgravity:_commit
execute if score #rg_ok ch_scratch matches 0 run scoreboard players add #rg_att ch_scratch 1
execute if score #rg_ok ch_scratch matches 0 if score #rg_att ch_scratch matches ..15 run function randomgravity:_try
execute if score #rg_ok ch_scratch matches 0 if score #rg_att ch_scratch matches 16.. run function randomgravity:_fallback

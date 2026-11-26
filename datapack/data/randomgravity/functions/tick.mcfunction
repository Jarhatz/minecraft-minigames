execute as @a unless score @s rg_dir matches 0..5 run scoreboard players set @s rg_dir 0
execute as @a unless score @s rg_next matches 0..5 run scoreboard players operation @s rg_next = @s rg_dir
scoreboard players remove #rg_timer ch_scratch 1
execute store result bossbar randomgravity:timer value run scoreboard players get #rg_timer ch_scratch
execute if score #rg_timer ch_scratch matches 200 run function randomgravity:_warn
execute if score #rg_timer ch_scratch matches ..0 run function randomgravity:_shift
scoreboard players operation #rg_mod ch_scratch = #rg_timer ch_scratch
scoreboard players operation #rg_mod ch_scratch %= #rg_twenty ch_scratch
execute if score #rg_mod ch_scratch matches 0 run function randomgravity:_second
scoreboard players add #rg_hb ch_scratch 1
execute if score #rg_hb ch_scratch matches 4.. run function randomgravity:_heading_all

scoreboard players set #rg_found ch_scratch 0
execute if score #rg_found ch_scratch matches 0 if score #rg_t0 ch_scratch matches 0 unless score @s rg_dir matches 0 store success score #rg_found ch_scratch run scoreboard players set #rg_r ch_scratch 0
execute if score #rg_found ch_scratch matches 0 if score #rg_t1 ch_scratch matches 0 unless score @s rg_dir matches 1 store success score #rg_found ch_scratch run scoreboard players set #rg_r ch_scratch 1
execute if score #rg_found ch_scratch matches 0 if score #rg_t2 ch_scratch matches 0 unless score @s rg_dir matches 2 store success score #rg_found ch_scratch run scoreboard players set #rg_r ch_scratch 2
execute if score #rg_found ch_scratch matches 0 if score #rg_t3 ch_scratch matches 0 unless score @s rg_dir matches 3 store success score #rg_found ch_scratch run scoreboard players set #rg_r ch_scratch 3
execute if score #rg_found ch_scratch matches 0 if score #rg_t4 ch_scratch matches 0 unless score @s rg_dir matches 4 store success score #rg_found ch_scratch run scoreboard players set #rg_r ch_scratch 4
execute if score #rg_found ch_scratch matches 0 if score #rg_t5 ch_scratch matches 0 unless score @s rg_dir matches 5 store success score #rg_found ch_scratch run scoreboard players set #rg_r ch_scratch 5
execute if score #rg_found ch_scratch matches 0 if score #rg_t0 ch_scratch matches 0 store success score #rg_found ch_scratch run scoreboard players set #rg_r ch_scratch 0
execute if score #rg_found ch_scratch matches 0 if score #rg_t1 ch_scratch matches 0 store success score #rg_found ch_scratch run scoreboard players set #rg_r ch_scratch 1
execute if score #rg_found ch_scratch matches 0 if score #rg_t2 ch_scratch matches 0 store success score #rg_found ch_scratch run scoreboard players set #rg_r ch_scratch 2
execute if score #rg_found ch_scratch matches 0 if score #rg_t3 ch_scratch matches 0 store success score #rg_found ch_scratch run scoreboard players set #rg_r ch_scratch 3
execute if score #rg_found ch_scratch matches 0 if score #rg_t4 ch_scratch matches 0 store success score #rg_found ch_scratch run scoreboard players set #rg_r ch_scratch 4
execute if score #rg_found ch_scratch matches 0 if score #rg_t5 ch_scratch matches 0 store success score #rg_found ch_scratch run scoreboard players set #rg_r ch_scratch 5
execute if score #rg_found ch_scratch matches 0 run scoreboard players operation #rg_r ch_scratch = @s rg_dir
function randomgravity:_commit

execute as @a[tag=bs_alive,tag=!bs_done] run function blockshuffle:_eliminate
tag @a remove bs_done
scoreboard players set #bs_alive_n ch_scratch 0
execute as @a[tag=bs_alive] run scoreboard players add #bs_alive_n ch_scratch 1
execute if score #bs_alive_n ch_scratch matches 2.. run function blockshuffle:_round_start
execute if score #bs_alive_n ch_scratch matches ..1 run function blockshuffle:_match_end

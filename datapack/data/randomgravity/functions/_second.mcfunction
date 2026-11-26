scoreboard players operation #rg_secs ch_scratch = #rg_timer ch_scratch
scoreboard players operation #rg_secs ch_scratch /= #rg_twenty ch_scratch
bossbar set randomgravity:timer players @a
execute as @a run function randomgravity:_ensure
execute if score #rg_timer ch_scratch matches 20..100 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 0.8 1.6
function randomgravity:_kill_stray

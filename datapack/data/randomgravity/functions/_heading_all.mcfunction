scoreboard players set #rg_hb ch_scratch 0
scoreboard players operation #rg_secs ch_scratch = #rg_timer ch_scratch
scoreboard players operation #rg_secs ch_scratch /= #rg_twenty ch_scratch
execute as @a run function randomgravity:_heading

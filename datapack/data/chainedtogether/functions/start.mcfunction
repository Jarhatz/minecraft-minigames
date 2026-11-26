execute unless score #active_mode ch_scratch matches 0 unless score #active_mode ch_scratch matches 7 run function minigames:_busy
execute if score #active_mode ch_scratch matches 0 run function chainedtogether:_begin
execute if score #active_mode ch_scratch matches 7 run function chainedtogether:_begin

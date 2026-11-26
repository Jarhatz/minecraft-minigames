scoreboard players remove #ct_release ch_scratch 1
execute as @a[scores={ct_id=1..}] run function chainedtogether:_hold
execute if score #ct_release ch_scratch matches ..0 run function chainedtogether:_release_done

scoreboard players set #hp_beat ch_scratch 0
execute as @a[tag=hp_holder] at @s run playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 1 0.7
execute if score #hp_fuse ch_scratch matches ..79 as @a[tag=hp_holder] at @s run playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 1 1.0

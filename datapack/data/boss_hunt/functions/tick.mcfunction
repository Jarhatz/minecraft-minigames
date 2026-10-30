execute as @a[tag=bh_boss] run function boss_hunt:_buff_refresh
execute store result score #bh_hp ch_scratch run data get entity @a[tag=bh_boss,limit=1] Health 1
execute store result score #bh_hpmax ch_scratch run attribute @a[tag=bh_boss,limit=1] minecraft:generic.max_health get 1
execute store result bossbar boss_hunt:boss max run scoreboard players get #bh_hpmax ch_scratch
execute store result bossbar boss_hunt:boss value run scoreboard players get #bh_hp ch_scratch
execute if entity @a[tag=bh_boss,scores={bh_dead=1..}] run function boss_hunt:_hunters_win
execute as @a[tag=bh_hunter,scores={bh_dead=1..}] run function boss_hunt:_hunter_died
scoreboard players set @a bh_dead 0
scoreboard players remove @a[tag=bh_lockout] bh_lock 1
execute as @a[tag=bh_lockout,scores={bh_lock=..0}] run function boss_hunt:_respawn_hunter
execute if score #tick ch_scratch matches 20.. run function boss_hunt:_second

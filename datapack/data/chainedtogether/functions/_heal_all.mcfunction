scoreboard players set #ct_heal ch_scratch 0
execute as @a[gamemode=!spectator] at @s unless entity @s[nbt={Health:0.0f}] unless entity @a[distance=0.01..12,gamemode=!spectator] if entity @a[distance=0.01..,gamemode=!spectator] run function chainedtogether:_heal

scoreboard players set #award ch_scratch 1
execute if score @s ch_kills matches 1.. run scoreboard players set #award ch_scratch 2
execute if score #globals ch_bounty_dead matches 1 run scoreboard players operation #award ch_scratch *= #two ch_scratch
scoreboard players operation @s ch_points += #award ch_scratch
scoreboard players set #globals ch_kill_awarded 1
tellraw @a [{"text":"  ↳ ","color":"gray"},{"selector":"@s","color":"gold","bold":true},{"text":" +","color":"yellow"},{"score":{"name":"#award","objective":"ch_scratch"},"color":"gold","bold":true},{"text":" pts (now ","color":"yellow"},{"score":{"name":"@s","objective":"ch_points"},"color":"gold","bold":true},{"text":")","color":"yellow"}]
playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1

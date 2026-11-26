scoreboard players operation #ct_cur ch_scratch = @s ct_id
tag @s add ct_me
execute as @e[type=minecraft:marker,tag=ct_pin] if score @s ct_id = #ct_cur ch_scratch at @s run tp @a[tag=ct_me,limit=1] ~ ~ ~
tag @s remove ct_me

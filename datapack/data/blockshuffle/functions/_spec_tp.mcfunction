execute if score @s bs_spec matches 1 run tp @s @a[tag=bs_alive,scores={bs_lid=0},limit=1]
execute if score @s bs_spec matches 2 run tp @s @a[tag=bs_alive,scores={bs_lid=1},limit=1]
execute if score @s bs_spec matches 3 run tp @s @a[tag=bs_alive,scores={bs_lid=2},limit=1]
execute if score @s bs_spec matches 4 run tp @s @a[tag=bs_alive,scores={bs_lid=3},limit=1]
execute if score @s bs_spec matches 5 run tp @s @a[tag=bs_alive,scores={bs_lid=4},limit=1]
execute if score @s bs_spec matches 6 run tp @s @a[tag=bs_alive,scores={bs_lid=5},limit=1]
execute if score @s bs_spec matches 7 run tp @s @a[tag=bs_alive,scores={bs_lid=6},limit=1]
execute if score @s bs_spec matches 8 run tp @s @a[tag=bs_alive,scores={bs_lid=7},limit=1]
execute if score @s bs_spec matches 9 run function blockshuffle:_spec_menu
scoreboard players set @s bs_spec 0
scoreboard players enable @s bs_spec

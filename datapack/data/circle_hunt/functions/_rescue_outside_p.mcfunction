execute store result score #ppx ch_scratch run data get entity @s Pos[0]
execute store result score #ppz ch_scratch run data get entity @s Pos[2]
execute if score #ppx ch_scratch matches ..-1 run scoreboard players operation #ppx ch_scratch *= #cn1 ch_scratch
execute if score #ppz ch_scratch matches ..-1 run scoreboard players operation #ppz ch_scratch *= #cn1 ch_scratch
scoreboard players set #pout ch_scratch 0
execute if score #ppx ch_scratch > #brad ch_scratch run scoreboard players set #pout ch_scratch 1
execute if score #ppz ch_scratch > #brad ch_scratch run scoreboard players set #pout ch_scratch 1
execute if score #pout ch_scratch matches 1 run effect give @s minecraft:slow_falling 15 0 true
execute if score #pout ch_scratch matches 1 run effect give @s minecraft:resistance 10 4 true
execute if score #pout ch_scratch matches 1 run tellraw @s [{"text":"[Zone] ","color":"aqua","bold":true},{"text":"You were caught outside the wall — pulling you back in.","color":"white"}]
execute if score #pout ch_scratch matches 1 in minecraft:overworld run tp @s 0.5 200 0.5

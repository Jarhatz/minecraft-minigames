execute as @a[scores={ch_id=0..},gamemode=survival] at @s unless data entity @s Inventory[{Slot:8b,id:"minecraft:compass"}] run function circle_hunt:give_compass

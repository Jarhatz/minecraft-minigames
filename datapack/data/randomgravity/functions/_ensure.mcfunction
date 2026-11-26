execute if score @s rg_dir matches 0 run function randomgravity:_clear_anchors
scoreboard players set #rg_ok ch_scratch 0
execute if score @s rg_dir matches 1 if data entity @s Inventory[{Slot:-106b,id:"gravityapivs:gravity_anchor_up"}] run scoreboard players set #rg_ok ch_scratch 1
execute if score @s rg_dir matches 2 if data entity @s Inventory[{Slot:-106b,id:"gravityapivs:gravity_anchor_north"}] run scoreboard players set #rg_ok ch_scratch 1
execute if score @s rg_dir matches 3 if data entity @s Inventory[{Slot:-106b,id:"gravityapivs:gravity_anchor_south"}] run scoreboard players set #rg_ok ch_scratch 1
execute if score @s rg_dir matches 4 if data entity @s Inventory[{Slot:-106b,id:"gravityapivs:gravity_anchor_east"}] run scoreboard players set #rg_ok ch_scratch 1
execute if score @s rg_dir matches 5 if data entity @s Inventory[{Slot:-106b,id:"gravityapivs:gravity_anchor_west"}] run scoreboard players set #rg_ok ch_scratch 1
execute if score @s rg_dir matches 1 if data entity @s SelectedItem{id:"gravityapivs:gravity_anchor_up"} run scoreboard players set #rg_ok ch_scratch 1
execute if score @s rg_dir matches 2 if data entity @s SelectedItem{id:"gravityapivs:gravity_anchor_north"} run scoreboard players set #rg_ok ch_scratch 1
execute if score @s rg_dir matches 3 if data entity @s SelectedItem{id:"gravityapivs:gravity_anchor_south"} run scoreboard players set #rg_ok ch_scratch 1
execute if score @s rg_dir matches 4 if data entity @s SelectedItem{id:"gravityapivs:gravity_anchor_east"} run scoreboard players set #rg_ok ch_scratch 1
execute if score @s rg_dir matches 5 if data entity @s SelectedItem{id:"gravityapivs:gravity_anchor_west"} run scoreboard players set #rg_ok ch_scratch 1
execute unless score @s rg_dir matches 0 if score #rg_ok ch_scratch matches 0 run function randomgravity:_place_anchor

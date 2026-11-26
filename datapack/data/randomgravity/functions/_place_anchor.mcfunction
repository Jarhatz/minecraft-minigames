function randomgravity:_clear_anchors
execute if data entity @s Inventory[{Slot:-106b}] at @s run function randomgravity:_stash_offhand
execute if score @s rg_dir matches 1 run item replace entity @s weapon.offhand with gravityapivs:gravity_anchor_up
execute if score @s rg_dir matches 2 run item replace entity @s weapon.offhand with gravityapivs:gravity_anchor_north
execute if score @s rg_dir matches 3 run item replace entity @s weapon.offhand with gravityapivs:gravity_anchor_south
execute if score @s rg_dir matches 4 run item replace entity @s weapon.offhand with gravityapivs:gravity_anchor_east
execute if score @s rg_dir matches 5 run item replace entity @s weapon.offhand with gravityapivs:gravity_anchor_west

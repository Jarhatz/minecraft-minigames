function randomgravity:_clear_anchors
execute unless score @s rg_dir matches 0 run function randomgravity:_place_anchor

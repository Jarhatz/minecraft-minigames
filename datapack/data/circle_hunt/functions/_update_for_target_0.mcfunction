execute store result storage circle_hunt:cmp LodestonePos.X int 1 run data get entity @a[scores={ch_id=0},limit=1] Pos[0]
execute store result storage circle_hunt:cmp LodestonePos.Y int 1 run data get entity @a[scores={ch_id=0},limit=1] Pos[1]
execute store result storage circle_hunt:cmp LodestonePos.Z int 1 run data get entity @a[scores={ch_id=0},limit=1] Pos[2]
data modify storage circle_hunt:cmp LodestoneDimension set from entity @a[scores={ch_id=0},limit=1] Dimension
item modify entity @s hotbar.8 circle_hunt:set_lodestone

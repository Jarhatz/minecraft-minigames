summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1b},PickupDelay:0,Tags:["rg_stash"]}
data modify entity @e[type=minecraft:item,tag=rg_stash,limit=1,sort=nearest] Item set from entity @s Inventory[{Slot:-106b}]
tag @e[type=minecraft:item,tag=rg_stash] remove rg_stash

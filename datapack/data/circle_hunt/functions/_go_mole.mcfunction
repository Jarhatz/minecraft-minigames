function circle_hunt:_start_shared
scoreboard players set #mode ch_scratch 1
effect give @a minecraft:resistance 10 4 true
execute as @a[scores={ch_id=0..}] at @s run function circle_hunt:_mole_pocket
give @a[scores={ch_id=0..}] minecraft:diamond_pickaxe{Unbreakable:1b,Enchantments:[{id:"minecraft:silk_touch",lvl:1s},{id:"minecraft:efficiency",lvl:4s}],display:{Name:'{"text":"Mole Claw","color":"gold","italic":false,"bold":true}',Lore:['{"text":"Silk Touch: stone drops stone - seal your tunnels","color":"gray","italic":false}']}} 1
give @a[scores={ch_id=0..}] minecraft:bread 64
give @a[scores={ch_id=0..}] yyzsbackpack:iron_backpack 1
effect give @a[scores={ch_id=0..}] minecraft:night_vision 16 0 true
title @a title [{"text":"MOLE HUNT","color":"gold","bold":true}]
title @a subtitle [{"text":"Dig. Hide. Hunt. First to 25 points.","color":"yellow"}]
tellraw @a [{"text":"[Mole Hunt] ","color":"gold","bold":true},{"text":"You are entombed in solid stone. Tunnel to your target.","color":"white"}]
tellraw @a [{"text":"  • Silk Touch pickaxe: stone drops stone — seal your tunnels behind you","color":"gray"}]
tellraw @a [{"text":"  • Compass slot 9 points at your target. Sneak-ping for exact XYZ — watch the depth!","color":"gray"}]
tellraw @a [{"text":"  • Supply drops carve loot rooms into the stone — dig to the coords","color":"gray"}]
tellraw @a [{"text":"  • Bounty, open season, inversion and the shrinking zone are all still live","color":"gray"}]
scoreboard players set #active_mode ch_scratch 2

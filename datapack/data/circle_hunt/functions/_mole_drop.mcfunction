scoreboard players add #drop_idx ch_scratch 1
execute if score #drop_idx ch_scratch matches 4.. run scoreboard players set #drop_idx ch_scratch 0
scoreboard players set #drop_ok ch_scratch 0
execute store result score #bsize ch_scratch run worldborder get
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 0 in circle_hunt:mole run forceload add 120 56
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 0 in circle_hunt:mole run fill 119 140 55 121 142 57 minecraft:air
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 0 in circle_hunt:mole run setblock 120 140 56 minecraft:chest{LootTable:"circle_hunt:supply_drop"}
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 0 run scoreboard players set #px ch_scratch 120
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 0 run scoreboard players set #py ch_scratch 140
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 0 run scoreboard players set #pz ch_scratch 56
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 0 in circle_hunt:mole store success score #drop_ok ch_scratch if block 120 140 56 minecraft:chest
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 0 in circle_hunt:mole run forceload remove 120 56
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 1 in circle_hunt:mole run forceload add -120 88
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 1 in circle_hunt:mole run fill -121 120 87 -119 122 89 minecraft:air
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 1 in circle_hunt:mole run setblock -120 120 88 minecraft:chest{LootTable:"circle_hunt:supply_drop"}
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 1 run scoreboard players set #px ch_scratch -120
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 1 run scoreboard players set #py ch_scratch 120
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 1 run scoreboard players set #pz ch_scratch 88
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 1 in circle_hunt:mole store success score #drop_ok ch_scratch if block -120 120 88 minecraft:chest
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 1 in circle_hunt:mole run forceload remove -120 88
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 2 in circle_hunt:mole run forceload add 72 -120
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 2 in circle_hunt:mole run fill 71 110 -121 73 112 -119 minecraft:air
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 2 in circle_hunt:mole run setblock 72 110 -120 minecraft:chest{LootTable:"circle_hunt:supply_drop"}
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 2 run scoreboard players set #px ch_scratch 72
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 2 run scoreboard players set #py ch_scratch 110
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 2 run scoreboard players set #pz ch_scratch -120
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 2 in circle_hunt:mole store success score #drop_ok ch_scratch if block 72 110 -120 minecraft:chest
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 2 in circle_hunt:mole run forceload remove 72 -120
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 3 in circle_hunt:mole run forceload add -88 -104
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 3 in circle_hunt:mole run fill -89 150 -105 -87 152 -103 minecraft:air
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 3 in circle_hunt:mole run setblock -88 150 -104 minecraft:chest{LootTable:"circle_hunt:supply_drop"}
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 3 run scoreboard players set #px ch_scratch -88
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 3 run scoreboard players set #py ch_scratch 150
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 3 run scoreboard players set #pz ch_scratch -104
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 3 in circle_hunt:mole store success score #drop_ok ch_scratch if block -88 150 -104 minecraft:chest
execute if score #bsize ch_scratch matches 400.. if score #drop_idx ch_scratch matches 3 in circle_hunt:mole run forceload remove -88 -104
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 0 in circle_hunt:mole run forceload add 8 8
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 0 in circle_hunt:mole run fill 7 130 7 9 132 9 minecraft:air
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 0 in circle_hunt:mole run setblock 8 130 8 minecraft:chest{LootTable:"circle_hunt:supply_drop"}
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 0 run scoreboard players set #px ch_scratch 8
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 0 run scoreboard players set #py ch_scratch 130
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 0 run scoreboard players set #pz ch_scratch 8
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 0 in circle_hunt:mole store success score #drop_ok ch_scratch if block 8 130 8 minecraft:chest
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 0 in circle_hunt:mole run forceload remove 8 8
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 1 in circle_hunt:mole run forceload add -8 8
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 1 in circle_hunt:mole run fill -9 140 7 -7 142 9 minecraft:air
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 1 in circle_hunt:mole run setblock -8 140 8 minecraft:chest{LootTable:"circle_hunt:supply_drop"}
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 1 run scoreboard players set #px ch_scratch -8
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 1 run scoreboard players set #py ch_scratch 140
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 1 run scoreboard players set #pz ch_scratch 8
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 1 in circle_hunt:mole store success score #drop_ok ch_scratch if block -8 140 8 minecraft:chest
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 1 in circle_hunt:mole run forceload remove -8 8
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 2 in circle_hunt:mole run forceload add -8 -8
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 2 in circle_hunt:mole run fill -9 120 -9 -7 122 -7 minecraft:air
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 2 in circle_hunt:mole run setblock -8 120 -8 minecraft:chest{LootTable:"circle_hunt:supply_drop"}
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 2 run scoreboard players set #px ch_scratch -8
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 2 run scoreboard players set #py ch_scratch 120
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 2 run scoreboard players set #pz ch_scratch -8
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 2 in circle_hunt:mole store success score #drop_ok ch_scratch if block -8 120 -8 minecraft:chest
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 2 in circle_hunt:mole run forceload remove -8 -8
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 3 in circle_hunt:mole run forceload add 8 -8
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 3 in circle_hunt:mole run fill 7 125 -9 9 127 -7 minecraft:air
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 3 in circle_hunt:mole run setblock 8 125 -8 minecraft:chest{LootTable:"circle_hunt:supply_drop"}
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 3 run scoreboard players set #px ch_scratch 8
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 3 run scoreboard players set #py ch_scratch 125
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 3 run scoreboard players set #pz ch_scratch -8
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 3 in circle_hunt:mole store success score #drop_ok ch_scratch if block 8 125 -8 minecraft:chest
execute if score #bsize ch_scratch matches ..399 if score #drop_idx ch_scratch matches 3 in circle_hunt:mole run forceload remove 8 -8
function circle_hunt:_drop_announce

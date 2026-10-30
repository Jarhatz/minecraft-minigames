execute store result score #px ch_scratch run data get entity @a[scores={ch_id=7..7},limit=1] Pos[0]
execute store result score #py ch_scratch run data get entity @a[scores={ch_id=7..7},limit=1] Pos[1]
execute store result score #pz ch_scratch run data get entity @a[scores={ch_id=7..7},limit=1] Pos[2]
tellraw @s [{"text":"[Intel] ","color":"red","bold":true},{"selector":"@a[scores={ch_id=7..7}]","color":"gold","bold":true},{"text":" is at ","color":"white"},{"score":{"name":"#px","objective":"ch_scratch"},"color":"aqua","bold":true},{"text":" / ","color":"gray"},{"score":{"name":"#py","objective":"ch_scratch"},"color":"aqua","bold":true},{"text":" / ","color":"gray"},{"score":{"name":"#pz","objective":"ch_scratch"},"color":"aqua","bold":true}]
playsound minecraft:block.note_block.pling player @s ~ ~ ~ 1 2

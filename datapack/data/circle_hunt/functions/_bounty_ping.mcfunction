execute store result score #px ch_scratch run data get entity @s Pos[0]
execute store result score #py ch_scratch run data get entity @s Pos[1]
execute store result score #pz ch_scratch run data get entity @s Pos[2]
tellraw @a [{"text":"[BOUNTY] ","color":"dark_red","bold":true},{"selector":"@s","color":"gold","bold":true},{"text":" leads the hunt — worth DOUBLE. Last seen: ","color":"white"},{"score":{"name":"#px","objective":"ch_scratch"},"color":"aqua","bold":true},{"text":" / ","color":"gray"},{"score":{"name":"#py","objective":"ch_scratch"},"color":"aqua","bold":true},{"text":" / ","color":"gray"},{"score":{"name":"#pz","objective":"ch_scratch"},"color":"aqua","bold":true}]

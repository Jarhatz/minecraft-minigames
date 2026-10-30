execute store result score #bsize ch_scratch run worldborder get
execute if score #bsize ch_scratch matches 200.. run worldborder add -50 10
execute if score #bsize ch_scratch matches 200.. run tellraw @a [{"text":"[Zone] ","color":"aqua","bold":true},{"text":"Blood in the water — the zone shrinks 50 blocks.","color":"aqua"}]

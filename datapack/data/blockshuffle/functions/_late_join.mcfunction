tag @s add bs_late
gamemode spectator @s
team join bs_x @s
title @s title [{"text":"SPECTATOR","color":"aqua","bold":true}]
title @s subtitle [{"text":"Match in progress — you'll play in the next one","color":"gray"}]
tellraw @a [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"selector":"@s","color":"aqua"},{"text":" joined mid-match and is spectating until it ends.","color":"gray"}]
function blockshuffle:_spec_menu

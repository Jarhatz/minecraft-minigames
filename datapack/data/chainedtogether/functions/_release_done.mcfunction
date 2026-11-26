scoreboard players set #ct_release ch_scratch 0
execute as @a[limit=1] run ct config afk false
kill @e[type=minecraft:marker,tag=ct_pin]
scoreboard players reset * ct_id
title @a clear
title @a reset
tellraw @a [{"text":"[Chained Together] ","color":"gold","bold":true},{"text":"Chains released. Everyone is free!","color":"green"}]
playsound minecraft:block.chain.break master @a ~ ~ ~ 1 1

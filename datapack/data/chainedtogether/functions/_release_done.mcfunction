execute as @a[limit=1] run ct config afk false
title @a reset
title @a clear
tellraw @a [{"text":"[Chained Together] ","color":"gold","bold":true},{"text":"Chains released. Still see a chain? Leave and rejoin the server - that always removes it.","color":"green"}]
playsound minecraft:block.chain.break master @a ~ ~ ~ 1 1

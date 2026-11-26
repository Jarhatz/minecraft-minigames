scoreboard players set #active_mode ch_scratch 7
# Mod defaults for this mode: 8-block chain, deaths = respawn and get pulled back to the group.
execute as @a[limit=1] run ct config length 8
execute as @a[limit=1] run ct config rechainondeath true
execute as @a[limit=1] run ct config sharedhealth false
execute as @a[limit=1] run ct config sharedhunger false
execute as @a[limit=1] run ct config sharedinventory false
execute as @a[limit=1] run ct config adminbypass false
execute as @a[limit=1] run ct config afk false
# Build one line of players: each player is chained to the previous one.
tag @a remove ct_tail
tag @a remove ct_new
tag @a add ct_todo
tag @r[tag=ct_todo] add ct_tail
tag @a[tag=ct_tail] remove ct_todo
function chainedtogether:_next
tag @a remove ct_tail
tellraw @a [{"text":"[Chained Together] ","color":"gold","bold":true},{"text":"You are all chained in a line. Stay within 8 blocks of your neighbours. Hold R to pull a partner. If someone dies they respawn next to the group.","color":"white"}]
title @a title {"text":"⛓ CHAINED TOGETHER","color":"gold","bold":true}
title @a subtitle {"text":"Stick together!","color":"yellow"}
playsound minecraft:block.chain.place master @a ~ ~ ~ 1 1

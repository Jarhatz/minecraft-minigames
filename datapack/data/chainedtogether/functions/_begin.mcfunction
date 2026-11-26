scoreboard players set #active_mode ch_scratch 7
# Mod defaults for this mode: 8-block chain, deaths = respawn and get pulled back to the group.
execute as @a[limit=1] run ct config length 8
execute as @a[limit=1] run ct config rechainondeath true
execute as @a[limit=1] run ct config sharedhealth false
execute as @a[limit=1] run ct config sharedhunger false
execute as @a[limit=1] run ct config sharedinventory false
execute as @a[limit=1] run ct config adminbypass false
execute as @a[limit=1] run ct config afk false
execute as @a[limit=1] run ct config combatwarning false
# Chain every player to every other player (a mesh), so one death never splits the group.
tag @a remove ct_done
tag @a remove ct_pending
execute as @a run function chainedtogether:_join
tag @a remove ct_done
scoreboard players set #ct_heal ch_scratch 0
tellraw @a [{"text":"[Chained Together] ","color":"gold","bold":true},{"text":"Everyone is chained to everyone. Stay within 8 blocks of each other. Hold R to pull a partner. If someone dies they respawn next to the group.","color":"white"}]
title @a title {"text":"⛓ CHAINED TOGETHER","color":"gold","bold":true}
title @a subtitle {"text":"Stick together!","color":"yellow"}
playsound minecraft:block.chain.place master @a ~ ~ ~ 1 1

scoreboard players set #active_mode ch_scratch 7
# Chain settings live in world/serverconfig/ct-server.toml (length 8, rechain on death). Writing
# several `ct config` values at once races the config file watcher, so only toggle AFK here.
execute as @a[limit=1] run ct config afk false
# Chain every player to every other player (a mesh), so one death never splits the group.
tag @a remove ct_done
tag @a remove ct_pending
execute as @a run function chainedtogether:_join
tag @a remove ct_done
tellraw @a [{"text":"[Chained Together] ","color":"gold","bold":true},{"text":"Everyone is chained to everyone. Stay within 8 blocks of each other. Hold R to pull a partner. If someone dies they respawn and are rechained to the group.","color":"white"}]
title @a title {"text":"⛓ CHAINED TOGETHER","color":"gold","bold":true}
title @a subtitle {"text":"Stick together!","color":"yellow"}
playsound minecraft:block.chain.place master @a ~ ~ ~ 1 1

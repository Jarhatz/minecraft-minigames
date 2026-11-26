scoreboard players set #active_mode ch_scratch 0
tag @a remove ct_todo
tag @a remove ct_new
tag @a remove ct_tail
# The mod has no admin "unchain" command. Its AFK feature removes the chains of anyone who
# stands still, so: loosen the chain, freeze everyone for 12s, let AFK-unchain release them.
execute as @a[limit=1] run ct config length 128
execute as @a[limit=1] run ct config afktime 10
execute as @a[limit=1] run ct config afk true
effect give @a minecraft:slowness 12 255 true
effect give @a minecraft:jump_boost 12 200 true
title @a times 5 220 10
title @a title {"text":"⛓ Releasing chains...","color":"gold","bold":true}
title @a subtitle {"text":"Stand still for 10 seconds","color":"yellow"}
schedule function chainedtogether:_release_done 13s replace

scoreboard players set #active_mode ch_scratch 0
tag @a remove ct_done
tag @a remove ct_pending
# The mod has no admin "unchain" command; its AFK feature drops the chains of anyone who has not
# moved for 10s. So: pin every player exactly in place for 15s with AFK-unchain on.
execute as @a[limit=1] run ct config length 128
execute as @a[limit=1] run ct config afktime 10
execute as @a[limit=1] run ct config afk true
scoreboard objectives add ct_id dummy
kill @e[type=minecraft:marker,tag=ct_pin]
scoreboard players set #ct_n ch_scratch 0
execute as @a at @s run function chainedtogether:_pin
scoreboard players set #ct_release ch_scratch 300
title @a times 5 300 10
title @a title {"text":"⛓ Releasing chains...","color":"gold","bold":true}
title @a subtitle {"text":"Hold still for 15 seconds","color":"yellow"}

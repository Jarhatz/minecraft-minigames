scoreboard players set #upgrader_on ch_scratch 1
execute as @a[gamemode=survival] unless entity @s[nbt={Inventory:[{id:"upgrader:upgrader"}]}] run give @s upgrader:upgrader
tellraw @a [{"text":"[Minigames] ","color":"aqua","bold":true},{"text":"The Upgrader is now ENABLED — everyone gets one, now and on next login.","color":"white"}]

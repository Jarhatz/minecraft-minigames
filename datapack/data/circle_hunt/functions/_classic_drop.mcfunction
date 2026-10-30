kill @e[tag=ch_drop_marker]
summon armor_stand 0 200 0 {Marker:1b,Invisible:1b,NoGravity:1b,Tags:["ch_drop_marker"]}
execute store result score #bsize ch_scratch run worldborder get
execute if score #bsize ch_scratch matches 450.. run spreadplayers 0 0 0 200 false @e[tag=ch_drop_marker,limit=1]
execute if score #bsize ch_scratch matches 350..449 run spreadplayers 0 0 0 150 false @e[tag=ch_drop_marker,limit=1]
execute if score #bsize ch_scratch matches 250..349 run spreadplayers 0 0 0 100 false @e[tag=ch_drop_marker,limit=1]
execute if score #bsize ch_scratch matches 150..249 run spreadplayers 0 0 0 50 false @e[tag=ch_drop_marker,limit=1]
execute if score #bsize ch_scratch matches ..149 run spreadplayers 0 0 0 30 false @e[tag=ch_drop_marker,limit=1]
scoreboard players set #drop_ok ch_scratch 0
execute as @e[tag=ch_drop_marker,limit=1] at @s run function circle_hunt:_supply_place
kill @e[tag=ch_drop_marker]
function circle_hunt:_drop_announce

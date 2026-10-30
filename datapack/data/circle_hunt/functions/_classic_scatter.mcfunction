execute store result score #bsize ch_scratch run worldborder get
execute if score #bsize ch_scratch matches 450.. run spreadplayers 0 0 50 200 false @s
execute if score #bsize ch_scratch matches 350..449 run spreadplayers 0 0 40 150 false @s
execute if score #bsize ch_scratch matches 250..349 run spreadplayers 0 0 25 100 false @s
execute if score #bsize ch_scratch matches 150..249 run spreadplayers 0 0 10 50 false @s
execute if score #bsize ch_scratch matches ..149 run spreadplayers 0 0 5 30 false @s

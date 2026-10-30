scoreboard players set #prox_on ch_scratch 0
tag @a remove ch_prox_active
tag @a remove ch_prox_was
tag @a remove ch_prox_elig
tellraw @a [{"text":"[Circle Hunt] ","color":"gold","bold":true},{"text":"Proximity warning DISABLED - hunters approach unseen.","color":"red"}]

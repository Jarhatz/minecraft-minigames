scoreboard players set #bs_active ch_scratch 0
bossbar set blockshuffle:timer players
gamemode survival @a[tag=bs_elim]
gamemode survival @a[tag=bs_late]
tag @a remove bs_alive
tag @a remove bs_done
tag @a remove bs_elim
tag @a remove bs_late
tag @a remove bs_lidset
function blockshuffle:_teams_clear
scoreboard objectives setdisplay sidebar
tellraw @a [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Match stopped by admin.","color":"gray"}]
scoreboard players set #active_mode ch_scratch 0

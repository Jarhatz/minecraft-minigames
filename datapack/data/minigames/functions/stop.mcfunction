execute if score #active_mode ch_scratch matches 0 run tellraw @a [{"text":"[Minigames] ","color":"aqua","bold":true},{"text":"No game is currently running.","color":"gray"}]
execute unless score #active_mode ch_scratch matches 0 run tellraw @a [{"text":"[Minigames] ","color":"aqua","bold":true},{"text":"Game stopped — everyone reset to the lobby.","color":"white"}]
execute if score #active_mode ch_scratch matches 3 run function blockshuffle:stop
execute if score #active_mode ch_scratch matches 4 run function boss_hunt:stop
execute if score #active_mode ch_scratch matches 5 run function hotpotato:stop
execute if score #active_mode ch_scratch matches 1..2 run function circle_hunt:reset
scoreboard players set #active_mode ch_scratch 0
worldborder center 0 0
worldborder set 59999968

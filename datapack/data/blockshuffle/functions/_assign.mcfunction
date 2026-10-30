execute store result score @s bs_block run data get entity @s UUID[3] 1
execute store result score #bs_h2 ch_scratch run data get entity @s UUID[1] 1
scoreboard players operation @s bs_block += #bs_h2 ch_scratch
scoreboard players operation @s bs_block %= #k1000 ch_scratch
execute if score @s bs_block matches ..-1 run scoreboard players operation @s bs_block *= #neg1 ch_scratch
scoreboard players operation @s bs_block += #bs_gt ch_scratch
scoreboard players operation @s bs_block *= #prime31 ch_scratch
scoreboard players operation @s bs_block += #bs_round ch_scratch
scoreboard players operation @s bs_block %= #poolsize ch_scratch
execute if score @s bs_block matches ..-1 run scoreboard players operation @s bs_block += #poolsize ch_scratch
execute if score @s bs_block = @s bs_last run scoreboard players add @s bs_block 1
execute if score @s bs_block >= #poolsize ch_scratch run scoreboard players set @s bs_block 0
scoreboard players operation @s bs_last = @s bs_block
title @s title [{"text":"Round ","color":"white"},{"score":{"name":"#bs_round","objective":"ch_scratch"},"color":"yellow","bold":true}]
execute if score @s bs_block matches 0 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"STONE","color":"yellow","bold":true}]
execute if score @s bs_block matches 1 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"COBBLESTONE","color":"yellow","bold":true}]
execute if score @s bs_block matches 2 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"MOSSY COBBLESTONE","color":"yellow","bold":true}]
execute if score @s bs_block matches 3 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"STONE BRICKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 4 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"MOSSY STONE BRICKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 5 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"CRACKED STONE BRICKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 6 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"CHISELED STONE BRICKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 7 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"SMOOTH STONE","color":"yellow","bold":true}]
execute if score @s bs_block matches 8 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"ANDESITE","color":"yellow","bold":true}]
execute if score @s bs_block matches 9 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"POLISHED ANDESITE","color":"yellow","bold":true}]
execute if score @s bs_block matches 10 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"DIORITE","color":"yellow","bold":true}]
execute if score @s bs_block matches 11 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"POLISHED DIORITE","color":"yellow","bold":true}]
execute if score @s bs_block matches 12 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"GRANITE","color":"yellow","bold":true}]
execute if score @s bs_block matches 13 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"POLISHED GRANITE","color":"yellow","bold":true}]
execute if score @s bs_block matches 14 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"DEEPSLATE","color":"yellow","bold":true}]
execute if score @s bs_block matches 15 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"COBBLED DEEPSLATE","color":"yellow","bold":true}]
execute if score @s bs_block matches 16 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"POLISHED DEEPSLATE","color":"yellow","bold":true}]
execute if score @s bs_block matches 17 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"DEEPSLATE BRICKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 18 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"CRACKED DEEPSLATE BRICKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 19 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"DEEPSLATE TILES","color":"yellow","bold":true}]
execute if score @s bs_block matches 20 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"CHISELED DEEPSLATE","color":"yellow","bold":true}]
execute if score @s bs_block matches 21 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"TUFF","color":"yellow","bold":true}]
execute if score @s bs_block matches 22 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"CALCITE","color":"yellow","bold":true}]
execute if score @s bs_block matches 23 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"DRIPSTONE BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 24 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"BRICKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 25 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"DIRT","color":"yellow","bold":true}]
execute if score @s bs_block matches 26 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"COARSE DIRT","color":"yellow","bold":true}]
execute if score @s bs_block matches 27 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"ROOTED DIRT","color":"yellow","bold":true}]
execute if score @s bs_block matches 28 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"GRASS BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 29 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"PODZOL","color":"yellow","bold":true}]
execute if score @s bs_block matches 30 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"MYCELIUM","color":"yellow","bold":true}]
execute if score @s bs_block matches 31 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"MUD","color":"yellow","bold":true}]
execute if score @s bs_block matches 32 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"PACKED MUD","color":"yellow","bold":true}]
execute if score @s bs_block matches 33 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"MUD BRICKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 34 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"CLAY","color":"yellow","bold":true}]
execute if score @s bs_block matches 35 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"GRAVEL","color":"yellow","bold":true}]
execute if score @s bs_block matches 36 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"SAND","color":"yellow","bold":true}]
execute if score @s bs_block matches 37 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"RED SAND","color":"yellow","bold":true}]
execute if score @s bs_block matches 38 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"OBSIDIAN","color":"yellow","bold":true}]
execute if score @s bs_block matches 39 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"SANDSTONE","color":"yellow","bold":true}]
execute if score @s bs_block matches 40 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"SMOOTH SANDSTONE","color":"yellow","bold":true}]
execute if score @s bs_block matches 41 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"CUT SANDSTONE","color":"yellow","bold":true}]
execute if score @s bs_block matches 42 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"CHISELED SANDSTONE","color":"yellow","bold":true}]
execute if score @s bs_block matches 43 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"RED SANDSTONE","color":"yellow","bold":true}]
execute if score @s bs_block matches 44 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"CUT RED SANDSTONE","color":"yellow","bold":true}]
execute if score @s bs_block matches 45 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"OAK LOG","color":"yellow","bold":true}]
execute if score @s bs_block matches 46 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"BIRCH LOG","color":"yellow","bold":true}]
execute if score @s bs_block matches 47 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"SPRUCE LOG","color":"yellow","bold":true}]
execute if score @s bs_block matches 48 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"JUNGLE LOG","color":"yellow","bold":true}]
execute if score @s bs_block matches 49 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"ACACIA LOG","color":"yellow","bold":true}]
execute if score @s bs_block matches 50 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"DARK OAK LOG","color":"yellow","bold":true}]
execute if score @s bs_block matches 51 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"MANGROVE LOG","color":"yellow","bold":true}]
execute if score @s bs_block matches 52 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"CHERRY LOG","color":"yellow","bold":true}]
execute if score @s bs_block matches 53 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"STRIPPED OAK LOG","color":"yellow","bold":true}]
execute if score @s bs_block matches 54 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"STRIPPED SPRUCE LOG","color":"yellow","bold":true}]
execute if score @s bs_block matches 55 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"OAK WOOD","color":"yellow","bold":true}]
execute if score @s bs_block matches 56 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"BIRCH WOOD","color":"yellow","bold":true}]
execute if score @s bs_block matches 57 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"BAMBOO BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 58 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"STRIPPED BAMBOO BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 59 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"OAK PLANKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 60 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"BIRCH PLANKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 61 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"SPRUCE PLANKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 62 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"JUNGLE PLANKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 63 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"ACACIA PLANKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 64 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"DARK OAK PLANKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 65 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"MANGROVE PLANKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 66 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"CHERRY PLANKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 67 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"BAMBOO PLANKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 68 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"OAK LEAVES","color":"yellow","bold":true}]
execute if score @s bs_block matches 69 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"BIRCH LEAVES","color":"yellow","bold":true}]
execute if score @s bs_block matches 70 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"SPRUCE LEAVES","color":"yellow","bold":true}]
execute if score @s bs_block matches 71 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"JUNGLE LEAVES","color":"yellow","bold":true}]
execute if score @s bs_block matches 72 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"DARK OAK LEAVES","color":"yellow","bold":true}]
execute if score @s bs_block matches 73 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"CHERRY LEAVES","color":"yellow","bold":true}]
execute if score @s bs_block matches 74 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"WHITE WOOL","color":"yellow","bold":true}]
execute if score @s bs_block matches 75 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"ORANGE WOOL","color":"yellow","bold":true}]
execute if score @s bs_block matches 76 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"YELLOW WOOL","color":"yellow","bold":true}]
execute if score @s bs_block matches 77 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"LIME WOOL","color":"yellow","bold":true}]
execute if score @s bs_block matches 78 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"LIGHT BLUE WOOL","color":"yellow","bold":true}]
execute if score @s bs_block matches 79 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"PINK WOOL","color":"yellow","bold":true}]
execute if score @s bs_block matches 80 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"PURPLE WOOL","color":"yellow","bold":true}]
execute if score @s bs_block matches 81 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"RED WOOL","color":"yellow","bold":true}]
execute if score @s bs_block matches 82 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"BLACK WOOL","color":"yellow","bold":true}]
execute if score @s bs_block matches 83 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"BROWN WOOL","color":"yellow","bold":true}]
execute if score @s bs_block matches 84 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"WHITE CONCRETE","color":"yellow","bold":true}]
execute if score @s bs_block matches 85 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"ORANGE CONCRETE","color":"yellow","bold":true}]
execute if score @s bs_block matches 86 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"YELLOW CONCRETE","color":"yellow","bold":true}]
execute if score @s bs_block matches 87 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"LIME CONCRETE","color":"yellow","bold":true}]
execute if score @s bs_block matches 88 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"LIGHT BLUE CONCRETE","color":"yellow","bold":true}]
execute if score @s bs_block matches 89 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"PINK CONCRETE","color":"yellow","bold":true}]
execute if score @s bs_block matches 90 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"PURPLE CONCRETE","color":"yellow","bold":true}]
execute if score @s bs_block matches 91 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"RED CONCRETE","color":"yellow","bold":true}]
execute if score @s bs_block matches 92 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"BLACK CONCRETE","color":"yellow","bold":true}]
execute if score @s bs_block matches 93 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"BLUE CONCRETE","color":"yellow","bold":true}]
execute if score @s bs_block matches 94 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"TERRACOTTA","color":"yellow","bold":true}]
execute if score @s bs_block matches 95 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"WHITE TERRACOTTA","color":"yellow","bold":true}]
execute if score @s bs_block matches 96 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"ORANGE TERRACOTTA","color":"yellow","bold":true}]
execute if score @s bs_block matches 97 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"YELLOW TERRACOTTA","color":"yellow","bold":true}]
execute if score @s bs_block matches 98 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"LIGHT BLUE TERRACOTTA","color":"yellow","bold":true}]
execute if score @s bs_block matches 99 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"PINK TERRACOTTA","color":"yellow","bold":true}]
execute if score @s bs_block matches 100 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"RED TERRACOTTA","color":"yellow","bold":true}]
execute if score @s bs_block matches 101 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"BROWN TERRACOTTA","color":"yellow","bold":true}]
execute if score @s bs_block matches 102 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"CYAN TERRACOTTA","color":"yellow","bold":true}]
execute if score @s bs_block matches 103 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"GREEN TERRACOTTA","color":"yellow","bold":true}]
execute if score @s bs_block matches 104 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"GLASS","color":"yellow","bold":true}]
execute if score @s bs_block matches 105 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"WHITE STAINED GLASS","color":"yellow","bold":true}]
execute if score @s bs_block matches 106 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"ORANGE STAINED GLASS","color":"yellow","bold":true}]
execute if score @s bs_block matches 107 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"LIME STAINED GLASS","color":"yellow","bold":true}]
execute if score @s bs_block matches 108 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"LIGHT BLUE STAINED GLASS","color":"yellow","bold":true}]
execute if score @s bs_block matches 109 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"RED STAINED GLASS","color":"yellow","bold":true}]
execute if score @s bs_block matches 110 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"BLACK STAINED GLASS","color":"yellow","bold":true}]
execute if score @s bs_block matches 111 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"TINTED GLASS","color":"yellow","bold":true}]
execute if score @s bs_block matches 112 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"COAL BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 113 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"IRON BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 114 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"GOLD BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 115 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"DIAMOND BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 116 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"EMERALD BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 117 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"LAPIS BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 118 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"REDSTONE BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 119 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"COPPER BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 120 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"EXPOSED COPPER","color":"yellow","bold":true}]
execute if score @s bs_block matches 121 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"WEATHERED COPPER","color":"yellow","bold":true}]
execute if score @s bs_block matches 122 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"OXIDIZED COPPER","color":"yellow","bold":true}]
execute if score @s bs_block matches 123 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"CUT COPPER","color":"yellow","bold":true}]
execute if score @s bs_block matches 124 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"RAW IRON BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 125 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"RAW COPPER BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 126 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"RAW GOLD BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 127 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"AMETHYST BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 128 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"CRAFTING TABLE","color":"yellow","bold":true}]
execute if score @s bs_block matches 129 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"FURNACE","color":"yellow","bold":true}]
execute if score @s bs_block matches 130 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"CHEST","color":"yellow","bold":true}]
execute if score @s bs_block matches 131 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"BOOKSHELF","color":"yellow","bold":true}]
execute if score @s bs_block matches 132 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"HAY BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 133 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"JUKEBOX","color":"yellow","bold":true}]
execute if score @s bs_block matches 134 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"NOTE BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 135 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"TARGET","color":"yellow","bold":true}]
execute if score @s bs_block matches 136 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"DRIED KELP BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 137 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"PUMPKIN","color":"yellow","bold":true}]
execute if score @s bs_block matches 138 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"CARVED PUMPKIN","color":"yellow","bold":true}]
execute if score @s bs_block matches 139 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"JACK O LANTERN","color":"yellow","bold":true}]
execute if score @s bs_block matches 140 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"MELON","color":"yellow","bold":true}]
execute if score @s bs_block matches 141 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"BEE NEST","color":"yellow","bold":true}]
execute if score @s bs_block matches 142 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"BARREL","color":"yellow","bold":true}]
execute if score @s bs_block matches 143 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"LOOM","color":"yellow","bold":true}]
execute if score @s bs_block matches 144 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"SMOKER","color":"yellow","bold":true}]
execute if score @s bs_block matches 145 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"BLAST FURNACE","color":"yellow","bold":true}]
execute if score @s bs_block matches 146 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"CARTOGRAPHY TABLE","color":"yellow","bold":true}]
execute if score @s bs_block matches 147 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"SMITHING TABLE","color":"yellow","bold":true}]
execute if score @s bs_block matches 148 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"FLETCHING TABLE","color":"yellow","bold":true}]
execute if score @s bs_block matches 149 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"COMPOSTER","color":"yellow","bold":true}]
execute if score @s bs_block matches 150 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"BONE BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 151 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"HONEYCOMB BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 152 run title @s subtitle [{"text":"Stand on: ","color":"white"},{"text":"HONEY BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 0 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"STONE","color":"yellow","bold":true}]
execute if score @s bs_block matches 1 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"COBBLESTONE","color":"yellow","bold":true}]
execute if score @s bs_block matches 2 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"MOSSY COBBLESTONE","color":"yellow","bold":true}]
execute if score @s bs_block matches 3 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"STONE BRICKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 4 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"MOSSY STONE BRICKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 5 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"CRACKED STONE BRICKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 6 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"CHISELED STONE BRICKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 7 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"SMOOTH STONE","color":"yellow","bold":true}]
execute if score @s bs_block matches 8 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"ANDESITE","color":"yellow","bold":true}]
execute if score @s bs_block matches 9 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"POLISHED ANDESITE","color":"yellow","bold":true}]
execute if score @s bs_block matches 10 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"DIORITE","color":"yellow","bold":true}]
execute if score @s bs_block matches 11 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"POLISHED DIORITE","color":"yellow","bold":true}]
execute if score @s bs_block matches 12 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"GRANITE","color":"yellow","bold":true}]
execute if score @s bs_block matches 13 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"POLISHED GRANITE","color":"yellow","bold":true}]
execute if score @s bs_block matches 14 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"DEEPSLATE","color":"yellow","bold":true}]
execute if score @s bs_block matches 15 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"COBBLED DEEPSLATE","color":"yellow","bold":true}]
execute if score @s bs_block matches 16 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"POLISHED DEEPSLATE","color":"yellow","bold":true}]
execute if score @s bs_block matches 17 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"DEEPSLATE BRICKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 18 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"CRACKED DEEPSLATE BRICKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 19 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"DEEPSLATE TILES","color":"yellow","bold":true}]
execute if score @s bs_block matches 20 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"CHISELED DEEPSLATE","color":"yellow","bold":true}]
execute if score @s bs_block matches 21 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"TUFF","color":"yellow","bold":true}]
execute if score @s bs_block matches 22 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"CALCITE","color":"yellow","bold":true}]
execute if score @s bs_block matches 23 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"DRIPSTONE BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 24 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"BRICKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 25 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"DIRT","color":"yellow","bold":true}]
execute if score @s bs_block matches 26 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"COARSE DIRT","color":"yellow","bold":true}]
execute if score @s bs_block matches 27 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"ROOTED DIRT","color":"yellow","bold":true}]
execute if score @s bs_block matches 28 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"GRASS BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 29 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"PODZOL","color":"yellow","bold":true}]
execute if score @s bs_block matches 30 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"MYCELIUM","color":"yellow","bold":true}]
execute if score @s bs_block matches 31 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"MUD","color":"yellow","bold":true}]
execute if score @s bs_block matches 32 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"PACKED MUD","color":"yellow","bold":true}]
execute if score @s bs_block matches 33 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"MUD BRICKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 34 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"CLAY","color":"yellow","bold":true}]
execute if score @s bs_block matches 35 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"GRAVEL","color":"yellow","bold":true}]
execute if score @s bs_block matches 36 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"SAND","color":"yellow","bold":true}]
execute if score @s bs_block matches 37 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"RED SAND","color":"yellow","bold":true}]
execute if score @s bs_block matches 38 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"OBSIDIAN","color":"yellow","bold":true}]
execute if score @s bs_block matches 39 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"SANDSTONE","color":"yellow","bold":true}]
execute if score @s bs_block matches 40 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"SMOOTH SANDSTONE","color":"yellow","bold":true}]
execute if score @s bs_block matches 41 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"CUT SANDSTONE","color":"yellow","bold":true}]
execute if score @s bs_block matches 42 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"CHISELED SANDSTONE","color":"yellow","bold":true}]
execute if score @s bs_block matches 43 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"RED SANDSTONE","color":"yellow","bold":true}]
execute if score @s bs_block matches 44 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"CUT RED SANDSTONE","color":"yellow","bold":true}]
execute if score @s bs_block matches 45 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"OAK LOG","color":"yellow","bold":true}]
execute if score @s bs_block matches 46 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"BIRCH LOG","color":"yellow","bold":true}]
execute if score @s bs_block matches 47 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"SPRUCE LOG","color":"yellow","bold":true}]
execute if score @s bs_block matches 48 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"JUNGLE LOG","color":"yellow","bold":true}]
execute if score @s bs_block matches 49 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"ACACIA LOG","color":"yellow","bold":true}]
execute if score @s bs_block matches 50 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"DARK OAK LOG","color":"yellow","bold":true}]
execute if score @s bs_block matches 51 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"MANGROVE LOG","color":"yellow","bold":true}]
execute if score @s bs_block matches 52 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"CHERRY LOG","color":"yellow","bold":true}]
execute if score @s bs_block matches 53 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"STRIPPED OAK LOG","color":"yellow","bold":true}]
execute if score @s bs_block matches 54 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"STRIPPED SPRUCE LOG","color":"yellow","bold":true}]
execute if score @s bs_block matches 55 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"OAK WOOD","color":"yellow","bold":true}]
execute if score @s bs_block matches 56 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"BIRCH WOOD","color":"yellow","bold":true}]
execute if score @s bs_block matches 57 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"BAMBOO BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 58 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"STRIPPED BAMBOO BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 59 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"OAK PLANKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 60 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"BIRCH PLANKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 61 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"SPRUCE PLANKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 62 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"JUNGLE PLANKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 63 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"ACACIA PLANKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 64 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"DARK OAK PLANKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 65 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"MANGROVE PLANKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 66 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"CHERRY PLANKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 67 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"BAMBOO PLANKS","color":"yellow","bold":true}]
execute if score @s bs_block matches 68 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"OAK LEAVES","color":"yellow","bold":true}]
execute if score @s bs_block matches 69 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"BIRCH LEAVES","color":"yellow","bold":true}]
execute if score @s bs_block matches 70 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"SPRUCE LEAVES","color":"yellow","bold":true}]
execute if score @s bs_block matches 71 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"JUNGLE LEAVES","color":"yellow","bold":true}]
execute if score @s bs_block matches 72 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"DARK OAK LEAVES","color":"yellow","bold":true}]
execute if score @s bs_block matches 73 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"CHERRY LEAVES","color":"yellow","bold":true}]
execute if score @s bs_block matches 74 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"WHITE WOOL","color":"yellow","bold":true}]
execute if score @s bs_block matches 75 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"ORANGE WOOL","color":"yellow","bold":true}]
execute if score @s bs_block matches 76 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"YELLOW WOOL","color":"yellow","bold":true}]
execute if score @s bs_block matches 77 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"LIME WOOL","color":"yellow","bold":true}]
execute if score @s bs_block matches 78 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"LIGHT BLUE WOOL","color":"yellow","bold":true}]
execute if score @s bs_block matches 79 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"PINK WOOL","color":"yellow","bold":true}]
execute if score @s bs_block matches 80 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"PURPLE WOOL","color":"yellow","bold":true}]
execute if score @s bs_block matches 81 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"RED WOOL","color":"yellow","bold":true}]
execute if score @s bs_block matches 82 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"BLACK WOOL","color":"yellow","bold":true}]
execute if score @s bs_block matches 83 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"BROWN WOOL","color":"yellow","bold":true}]
execute if score @s bs_block matches 84 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"WHITE CONCRETE","color":"yellow","bold":true}]
execute if score @s bs_block matches 85 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"ORANGE CONCRETE","color":"yellow","bold":true}]
execute if score @s bs_block matches 86 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"YELLOW CONCRETE","color":"yellow","bold":true}]
execute if score @s bs_block matches 87 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"LIME CONCRETE","color":"yellow","bold":true}]
execute if score @s bs_block matches 88 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"LIGHT BLUE CONCRETE","color":"yellow","bold":true}]
execute if score @s bs_block matches 89 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"PINK CONCRETE","color":"yellow","bold":true}]
execute if score @s bs_block matches 90 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"PURPLE CONCRETE","color":"yellow","bold":true}]
execute if score @s bs_block matches 91 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"RED CONCRETE","color":"yellow","bold":true}]
execute if score @s bs_block matches 92 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"BLACK CONCRETE","color":"yellow","bold":true}]
execute if score @s bs_block matches 93 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"BLUE CONCRETE","color":"yellow","bold":true}]
execute if score @s bs_block matches 94 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"TERRACOTTA","color":"yellow","bold":true}]
execute if score @s bs_block matches 95 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"WHITE TERRACOTTA","color":"yellow","bold":true}]
execute if score @s bs_block matches 96 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"ORANGE TERRACOTTA","color":"yellow","bold":true}]
execute if score @s bs_block matches 97 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"YELLOW TERRACOTTA","color":"yellow","bold":true}]
execute if score @s bs_block matches 98 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"LIGHT BLUE TERRACOTTA","color":"yellow","bold":true}]
execute if score @s bs_block matches 99 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"PINK TERRACOTTA","color":"yellow","bold":true}]
execute if score @s bs_block matches 100 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"RED TERRACOTTA","color":"yellow","bold":true}]
execute if score @s bs_block matches 101 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"BROWN TERRACOTTA","color":"yellow","bold":true}]
execute if score @s bs_block matches 102 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"CYAN TERRACOTTA","color":"yellow","bold":true}]
execute if score @s bs_block matches 103 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"GREEN TERRACOTTA","color":"yellow","bold":true}]
execute if score @s bs_block matches 104 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"GLASS","color":"yellow","bold":true}]
execute if score @s bs_block matches 105 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"WHITE STAINED GLASS","color":"yellow","bold":true}]
execute if score @s bs_block matches 106 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"ORANGE STAINED GLASS","color":"yellow","bold":true}]
execute if score @s bs_block matches 107 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"LIME STAINED GLASS","color":"yellow","bold":true}]
execute if score @s bs_block matches 108 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"LIGHT BLUE STAINED GLASS","color":"yellow","bold":true}]
execute if score @s bs_block matches 109 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"RED STAINED GLASS","color":"yellow","bold":true}]
execute if score @s bs_block matches 110 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"BLACK STAINED GLASS","color":"yellow","bold":true}]
execute if score @s bs_block matches 111 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"TINTED GLASS","color":"yellow","bold":true}]
execute if score @s bs_block matches 112 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"COAL BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 113 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"IRON BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 114 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"GOLD BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 115 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"DIAMOND BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 116 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"EMERALD BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 117 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"LAPIS BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 118 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"REDSTONE BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 119 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"COPPER BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 120 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"EXPOSED COPPER","color":"yellow","bold":true}]
execute if score @s bs_block matches 121 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"WEATHERED COPPER","color":"yellow","bold":true}]
execute if score @s bs_block matches 122 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"OXIDIZED COPPER","color":"yellow","bold":true}]
execute if score @s bs_block matches 123 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"CUT COPPER","color":"yellow","bold":true}]
execute if score @s bs_block matches 124 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"RAW IRON BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 125 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"RAW COPPER BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 126 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"RAW GOLD BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 127 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"AMETHYST BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 128 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"CRAFTING TABLE","color":"yellow","bold":true}]
execute if score @s bs_block matches 129 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"FURNACE","color":"yellow","bold":true}]
execute if score @s bs_block matches 130 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"CHEST","color":"yellow","bold":true}]
execute if score @s bs_block matches 131 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"BOOKSHELF","color":"yellow","bold":true}]
execute if score @s bs_block matches 132 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"HAY BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 133 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"JUKEBOX","color":"yellow","bold":true}]
execute if score @s bs_block matches 134 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"NOTE BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 135 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"TARGET","color":"yellow","bold":true}]
execute if score @s bs_block matches 136 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"DRIED KELP BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 137 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"PUMPKIN","color":"yellow","bold":true}]
execute if score @s bs_block matches 138 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"CARVED PUMPKIN","color":"yellow","bold":true}]
execute if score @s bs_block matches 139 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"JACK O LANTERN","color":"yellow","bold":true}]
execute if score @s bs_block matches 140 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"MELON","color":"yellow","bold":true}]
execute if score @s bs_block matches 141 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"BEE NEST","color":"yellow","bold":true}]
execute if score @s bs_block matches 142 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"BARREL","color":"yellow","bold":true}]
execute if score @s bs_block matches 143 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"LOOM","color":"yellow","bold":true}]
execute if score @s bs_block matches 144 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"SMOKER","color":"yellow","bold":true}]
execute if score @s bs_block matches 145 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"BLAST FURNACE","color":"yellow","bold":true}]
execute if score @s bs_block matches 146 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"CARTOGRAPHY TABLE","color":"yellow","bold":true}]
execute if score @s bs_block matches 147 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"SMITHING TABLE","color":"yellow","bold":true}]
execute if score @s bs_block matches 148 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"FLETCHING TABLE","color":"yellow","bold":true}]
execute if score @s bs_block matches 149 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"COMPOSTER","color":"yellow","bold":true}]
execute if score @s bs_block matches 150 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"BONE BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 151 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"HONEYCOMB BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 152 run tellraw @s [{"text":"[Block Shuffle] ","color":"gold","bold":true},{"text":"Your block: ","color":"white"},{"text":"HONEY BLOCK","color":"yellow","bold":true}]
execute if score @s bs_block matches 0 run team join bs_s0 @s
execute if score @s bs_block matches 1 run team join bs_s1 @s
execute if score @s bs_block matches 2 run team join bs_s2 @s
execute if score @s bs_block matches 3 run team join bs_s3 @s
execute if score @s bs_block matches 4 run team join bs_s4 @s
execute if score @s bs_block matches 5 run team join bs_s5 @s
execute if score @s bs_block matches 6 run team join bs_s6 @s
execute if score @s bs_block matches 7 run team join bs_s7 @s
execute if score @s bs_block matches 8 run team join bs_s8 @s
execute if score @s bs_block matches 9 run team join bs_s9 @s
execute if score @s bs_block matches 10 run team join bs_s10 @s
execute if score @s bs_block matches 11 run team join bs_s11 @s
execute if score @s bs_block matches 12 run team join bs_s12 @s
execute if score @s bs_block matches 13 run team join bs_s13 @s
execute if score @s bs_block matches 14 run team join bs_s14 @s
execute if score @s bs_block matches 15 run team join bs_s15 @s
execute if score @s bs_block matches 16 run team join bs_s16 @s
execute if score @s bs_block matches 17 run team join bs_s17 @s
execute if score @s bs_block matches 18 run team join bs_s18 @s
execute if score @s bs_block matches 19 run team join bs_s19 @s
execute if score @s bs_block matches 20 run team join bs_s20 @s
execute if score @s bs_block matches 21 run team join bs_s21 @s
execute if score @s bs_block matches 22 run team join bs_s22 @s
execute if score @s bs_block matches 23 run team join bs_s23 @s
execute if score @s bs_block matches 24 run team join bs_s24 @s
execute if score @s bs_block matches 25 run team join bs_s25 @s
execute if score @s bs_block matches 26 run team join bs_s26 @s
execute if score @s bs_block matches 27 run team join bs_s27 @s
execute if score @s bs_block matches 28 run team join bs_s28 @s
execute if score @s bs_block matches 29 run team join bs_s29 @s
execute if score @s bs_block matches 30 run team join bs_s30 @s
execute if score @s bs_block matches 31 run team join bs_s31 @s
execute if score @s bs_block matches 32 run team join bs_s32 @s
execute if score @s bs_block matches 33 run team join bs_s33 @s
execute if score @s bs_block matches 34 run team join bs_s34 @s
execute if score @s bs_block matches 35 run team join bs_s35 @s
execute if score @s bs_block matches 36 run team join bs_s36 @s
execute if score @s bs_block matches 37 run team join bs_s37 @s
execute if score @s bs_block matches 38 run team join bs_s38 @s
execute if score @s bs_block matches 39 run team join bs_s39 @s
execute if score @s bs_block matches 40 run team join bs_s40 @s
execute if score @s bs_block matches 41 run team join bs_s41 @s
execute if score @s bs_block matches 42 run team join bs_s42 @s
execute if score @s bs_block matches 43 run team join bs_s43 @s
execute if score @s bs_block matches 44 run team join bs_s44 @s
execute if score @s bs_block matches 45 run team join bs_s45 @s
execute if score @s bs_block matches 46 run team join bs_s46 @s
execute if score @s bs_block matches 47 run team join bs_s47 @s
execute if score @s bs_block matches 48 run team join bs_s48 @s
execute if score @s bs_block matches 49 run team join bs_s49 @s
execute if score @s bs_block matches 50 run team join bs_s50 @s
execute if score @s bs_block matches 51 run team join bs_s51 @s
execute if score @s bs_block matches 52 run team join bs_s52 @s
execute if score @s bs_block matches 53 run team join bs_s53 @s
execute if score @s bs_block matches 54 run team join bs_s54 @s
execute if score @s bs_block matches 55 run team join bs_s55 @s
execute if score @s bs_block matches 56 run team join bs_s56 @s
execute if score @s bs_block matches 57 run team join bs_s57 @s
execute if score @s bs_block matches 58 run team join bs_s58 @s
execute if score @s bs_block matches 59 run team join bs_s59 @s
execute if score @s bs_block matches 60 run team join bs_s60 @s
execute if score @s bs_block matches 61 run team join bs_s61 @s
execute if score @s bs_block matches 62 run team join bs_s62 @s
execute if score @s bs_block matches 63 run team join bs_s63 @s
execute if score @s bs_block matches 64 run team join bs_s64 @s
execute if score @s bs_block matches 65 run team join bs_s65 @s
execute if score @s bs_block matches 66 run team join bs_s66 @s
execute if score @s bs_block matches 67 run team join bs_s67 @s
execute if score @s bs_block matches 68 run team join bs_s68 @s
execute if score @s bs_block matches 69 run team join bs_s69 @s
execute if score @s bs_block matches 70 run team join bs_s70 @s
execute if score @s bs_block matches 71 run team join bs_s71 @s
execute if score @s bs_block matches 72 run team join bs_s72 @s
execute if score @s bs_block matches 73 run team join bs_s73 @s
execute if score @s bs_block matches 74 run team join bs_s74 @s
execute if score @s bs_block matches 75 run team join bs_s75 @s
execute if score @s bs_block matches 76 run team join bs_s76 @s
execute if score @s bs_block matches 77 run team join bs_s77 @s
execute if score @s bs_block matches 78 run team join bs_s78 @s
execute if score @s bs_block matches 79 run team join bs_s79 @s
execute if score @s bs_block matches 80 run team join bs_s80 @s
execute if score @s bs_block matches 81 run team join bs_s81 @s
execute if score @s bs_block matches 82 run team join bs_s82 @s
execute if score @s bs_block matches 83 run team join bs_s83 @s
execute if score @s bs_block matches 84 run team join bs_s84 @s
execute if score @s bs_block matches 85 run team join bs_s85 @s
execute if score @s bs_block matches 86 run team join bs_s86 @s
execute if score @s bs_block matches 87 run team join bs_s87 @s
execute if score @s bs_block matches 88 run team join bs_s88 @s
execute if score @s bs_block matches 89 run team join bs_s89 @s
execute if score @s bs_block matches 90 run team join bs_s90 @s
execute if score @s bs_block matches 91 run team join bs_s91 @s
execute if score @s bs_block matches 92 run team join bs_s92 @s
execute if score @s bs_block matches 93 run team join bs_s93 @s
execute if score @s bs_block matches 94 run team join bs_s94 @s
execute if score @s bs_block matches 95 run team join bs_s95 @s
execute if score @s bs_block matches 96 run team join bs_s96 @s
execute if score @s bs_block matches 97 run team join bs_s97 @s
execute if score @s bs_block matches 98 run team join bs_s98 @s
execute if score @s bs_block matches 99 run team join bs_s99 @s
execute if score @s bs_block matches 100 run team join bs_s100 @s
execute if score @s bs_block matches 101 run team join bs_s101 @s
execute if score @s bs_block matches 102 run team join bs_s102 @s
execute if score @s bs_block matches 103 run team join bs_s103 @s
execute if score @s bs_block matches 104 run team join bs_s104 @s
execute if score @s bs_block matches 105 run team join bs_s105 @s
execute if score @s bs_block matches 106 run team join bs_s106 @s
execute if score @s bs_block matches 107 run team join bs_s107 @s
execute if score @s bs_block matches 108 run team join bs_s108 @s
execute if score @s bs_block matches 109 run team join bs_s109 @s
execute if score @s bs_block matches 110 run team join bs_s110 @s
execute if score @s bs_block matches 111 run team join bs_s111 @s
execute if score @s bs_block matches 112 run team join bs_s112 @s
execute if score @s bs_block matches 113 run team join bs_s113 @s
execute if score @s bs_block matches 114 run team join bs_s114 @s
execute if score @s bs_block matches 115 run team join bs_s115 @s
execute if score @s bs_block matches 116 run team join bs_s116 @s
execute if score @s bs_block matches 117 run team join bs_s117 @s
execute if score @s bs_block matches 118 run team join bs_s118 @s
execute if score @s bs_block matches 119 run team join bs_s119 @s
execute if score @s bs_block matches 120 run team join bs_s120 @s
execute if score @s bs_block matches 121 run team join bs_s121 @s
execute if score @s bs_block matches 122 run team join bs_s122 @s
execute if score @s bs_block matches 123 run team join bs_s123 @s
execute if score @s bs_block matches 124 run team join bs_s124 @s
execute if score @s bs_block matches 125 run team join bs_s125 @s
execute if score @s bs_block matches 126 run team join bs_s126 @s
execute if score @s bs_block matches 127 run team join bs_s127 @s
execute if score @s bs_block matches 128 run team join bs_s128 @s
execute if score @s bs_block matches 129 run team join bs_s129 @s
execute if score @s bs_block matches 130 run team join bs_s130 @s
execute if score @s bs_block matches 131 run team join bs_s131 @s
execute if score @s bs_block matches 132 run team join bs_s132 @s
execute if score @s bs_block matches 133 run team join bs_s133 @s
execute if score @s bs_block matches 134 run team join bs_s134 @s
execute if score @s bs_block matches 135 run team join bs_s135 @s
execute if score @s bs_block matches 136 run team join bs_s136 @s
execute if score @s bs_block matches 137 run team join bs_s137 @s
execute if score @s bs_block matches 138 run team join bs_s138 @s
execute if score @s bs_block matches 139 run team join bs_s139 @s
execute if score @s bs_block matches 140 run team join bs_s140 @s
execute if score @s bs_block matches 141 run team join bs_s141 @s
execute if score @s bs_block matches 142 run team join bs_s142 @s
execute if score @s bs_block matches 143 run team join bs_s143 @s
execute if score @s bs_block matches 144 run team join bs_s144 @s
execute if score @s bs_block matches 145 run team join bs_s145 @s
execute if score @s bs_block matches 146 run team join bs_s146 @s
execute if score @s bs_block matches 147 run team join bs_s147 @s
execute if score @s bs_block matches 148 run team join bs_s148 @s
execute if score @s bs_block matches 149 run team join bs_s149 @s
execute if score @s bs_block matches 150 run team join bs_s150 @s
execute if score @s bs_block matches 151 run team join bs_s151 @s
execute if score @s bs_block matches 152 run team join bs_s152 @s

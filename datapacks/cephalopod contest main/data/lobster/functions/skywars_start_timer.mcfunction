execute store result bossbar lobster:time max run scoreboard players get time.skywars config
execute store result bossbar lobster:time value run scoreboard players get time.skywars config
scoreboard players operation %second game = time.skywars config
tellraw @a "Resistance has worn off."
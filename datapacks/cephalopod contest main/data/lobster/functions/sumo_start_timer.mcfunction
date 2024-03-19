execute store result bossbar lobster:time max run scoreboard players get time.sumo config
execute store result bossbar lobster:time value run scoreboard players get time.sumo config
scoreboard players operation %second game = time.sumo config
tellraw @a "Weakness has worn off."
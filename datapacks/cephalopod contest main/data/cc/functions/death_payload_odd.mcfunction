# multiply respawn time by ratio of red:blu player counts
scoreboard players operation @s[team=red] death_time *= .red game
scoreboard players operation @s[team=red] death_time /= .blu game
#scoreboard players operation @s[team=blue] death_time *= .blu game
#scoreboard players operation @s[team=blue] death_time /= .red game
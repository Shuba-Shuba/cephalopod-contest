#say shoot

execute if entity @s[type=player] run function shb:reload/stop

execute if entity @s[type=player] run scoreboard players operation @s cd = .cd stats
execute if entity @s[type=player] run scoreboard players operation @s autofire = .autofire stats
execute if entity @s[type=player] run scoreboard players operation @s autodelay = .autodelay stats
# IMPORTANT NOTE: The total number of shots fired is the autofire stat PLUS ONE!

execute if entity @s[type=player] run scoreboard players remove .ammo.count stats 1
execute if entity @s[type=player] run scoreboard players set .save stats 1

function shb:sfx/shoot
execute if score .ammo.type stats matches 1 run function shb:shoot/bullet
execute if score .ammo.type stats matches 2 run function shb:shoot/rocket
execute if score .ammo.type stats matches 3 run function shb:shoot/shotgun

# cephalopod contest weapons
execute if score .ammo.type stats matches 4 run function shb:shoot/taser
execute if score .ammo.type stats matches 5 run function shb:shoot/fire
execute if score .ammo.type stats matches 6 run function shb:shoot/gravity

# if non-player (sentry) is using the gun, stats are invalid
execute if entity @s[type=!player] run scoreboard players set .loaded stats 0
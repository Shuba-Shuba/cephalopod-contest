#say burst

scoreboard players operation @s autodelay = .autodelay stats
scoreboard players remove @s autofire 1

scoreboard players remove .ammo.count stats 1
scoreboard players set .save stats 1

function shb:sfx/shoot
execute if score .ammo.type stats matches 1 run function shb:shoot/bullet
execute if score .ammo.type stats matches 2 run function shb:shoot/rocket
execute if score .ammo.type stats matches 3 run function shb:shoot/shotgun

# [CEPHALOPOD CONTEST] taser
execute if score .ammo.type stats matches 4 run function shb:shoot/taser
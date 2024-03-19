kill @e[type=arrow,tag=!arrow_verified,limit=1,sort=nearest]

scoreboard players set .dmg stats 3
scoreboard players set .range stats 200
scoreboard players set .falloff.buffer stats 40
scoreboard players set .falloff.divisor stats 1
scoreboard players set .sfx.shoot stats 1
scoreboard players set .ammo.type stats 1

function shb:shoot/shoot
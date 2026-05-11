scoreboard players set %system UUID0 0
scoreboard players set %system UUID1 0
scoreboard players set %system UUID2 0
scoreboard players set %system UUID3 0
scoreboard players operation %system UUID0 = @e[tag=sentry,distance=..2,sort=nearest,limit=1] builderUUID0
scoreboard players operation %system UUID1 = @e[tag=sentry,distance=..2,sort=nearest,limit=1] builderUUID1
scoreboard players operation %system UUID2 = @e[tag=sentry,distance=..2,sort=nearest,limit=1] builderUUID2
scoreboard players operation %system UUID3 = @e[tag=sentry,distance=..2,sort=nearest,limit=1] builderUUID3
execute if score @s UUID0 = %system UUID0 if score @s UUID1 = %system UUID1 if score @s UUID2 = %system UUID2 if score @s UUID3 = %system UUID3 run effect give @e[tag=sentry,distance=..2,sort=nearest,limit=1] instant_damage 1 1 true
execute if score @s UUID0 = %system UUID0 if score @s UUID1 = %system UUID1 if score @s UUID2 = %system UUID2 if score @s UUID3 = %system UUID3 run clear @s iron_ingot 8
execute if score @s UUID0 = %system UUID0 if score @s UUID1 = %system UUID1 if score @s UUID2 = %system UUID2 if score @s UUID3 = %system UUID3 run tellraw @s "Healed sentry by 12 HP."
scoreboard players set %second eng_time 0
give @a[scores={Kit_ID=23,metal=..63}] iron_ingot
clear @a[tag=lobby] iron_ingot 1
execute as @a[scores={Kit_ID=23}] store result score @s metal run clear @s iron_ingot 0
execute as @a[scores={Kit_ID=23,metal=65..}] run clear @s iron_ingot
execute as @a[scores={Kit_ID=23,metal=65..}] run give @s iron_ingot 64
execute as @e[tag=sentry,scores={upgrade_time=1..}] run function battle:eng/sentry/upgrade_increment
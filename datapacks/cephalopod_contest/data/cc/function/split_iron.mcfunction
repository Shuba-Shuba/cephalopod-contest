scoreboard players remove @s split_iron 1
clear @s iron_ingot[custom_data={split:1b}] 1
execute at @e[type=marker,tag=gen_forge,limit=1,sort=nearest] run give @a[distance=..2] iron_ingot
execute if score @s split_iron matches 1.. run function cc:split_iron
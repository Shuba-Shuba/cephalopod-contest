scoreboard players remove @s split_gold 1
clear @s gold_ingot[custom_data={split:1b}] 1
execute at @e[type=marker,tag=gen_forge,limit=1,sort=nearest] run give @a[distance=..2] gold_ingot
execute if score @s split_gold matches 1.. run function cc:split_gold
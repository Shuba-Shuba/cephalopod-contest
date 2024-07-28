execute as @e[type=marker,tag=fire] if score @s fire_time matches 1.. at @s run scoreboard players remove @s fire_time 1
execute as @e[type=marker,tag=fire] if score @s fire_time matches 1.. at @s run setblock ~ ~ ~ fire keep
execute as @e[type=marker,tag=fire_light] if score @s fire_time matches 1.. at @s run scoreboard players remove @s fire_time 1
execute as @e[type=marker,tag=fire_light] if score @s fire_time matches 1.. at @s run setblock ~ ~ ~ fire
execute as @e[type=marker,tag=fire] unless score @s fire_time matches 1.. at @s run fill ~ ~ ~ ~ ~ ~ air replace fire
execute as @e[type=marker,tag=fire] unless score @s fire_time matches 1.. at @s run fill ~ ~ ~ ~ ~ ~ air replace soul_fire
execute as @e[type=marker,tag=fire] unless score @s fire_time matches 1.. at @s run kill @s
execute as @e[type=marker,tag=fire_light] unless score @s fire_time matches 1.. at @s run fill ~ ~ ~ ~ ~ ~ light[level=15] replace fire
execute as @e[type=marker,tag=fire_light] unless score @s fire_time matches 1.. at @s run fill ~ ~ ~ ~ ~ ~ light[level=15] replace soul_fire
execute as @e[type=marker,tag=fire_light] unless score @s fire_time matches 1.. at @s run kill @s
execute as @a[scores={Kit_ID=26}] at @s if data entity @s {SelectedItem:{id:"minecraft:blaze_rod"}} run particle minecraft:glow ~ ~1 ~ 1 1 1 10 1 normal @a
#scoreboard players remove @a[scores={launch_cd=1..}] launch_cd 1
#scoreboard players remove @a[scores={fire_cd=1..}] fire_cd 1
#execute as @a[scores={launch_cd=1}] at @s run function battle:pyro/ping
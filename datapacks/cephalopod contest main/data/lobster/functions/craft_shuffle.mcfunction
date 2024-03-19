scoreboard players operation .search craft_index = @s craft_index
execute as @e[type=marker,tag=shelf] if score @s craft_index = .search craft_index run tag @s add shuffle

scoreboard players set %index craft 6
execute as @e[type=marker,tag=shuffle,sort=random] store result score @s craft run scoreboard players remove %index craft 1
execute as @e[type=marker,tag=shuffle,scores={craft=0}] at @s run clone 210 162 1069 212 152 1073 ~ ~ ~
execute as @e[type=marker,tag=shuffle,scores={craft=1}] at @s run clone 214 162 1069 216 152 1073 ~ ~ ~
execute as @e[type=marker,tag=shuffle,scores={craft=2}] at @s run clone 218 162 1069 220 152 1073 ~ ~ ~
execute as @e[type=marker,tag=shuffle,scores={craft=3}] at @s run clone 222 162 1069 224 152 1073 ~ ~ ~
execute as @e[type=marker,tag=shuffle,scores={craft=4}] at @s run clone 226 162 1069 228 152 1073 ~ ~ ~
execute as @e[type=marker,tag=shuffle,scores={craft=5}] at @s run clone 230 162 1069 232 152 1073 ~ ~ ~

scoreboard players set @e[type=marker,tag=shuffle] craft 0
scoreboard players set %index craft 0
tag @e[type=marker,tag=shuffle] remove shuffle
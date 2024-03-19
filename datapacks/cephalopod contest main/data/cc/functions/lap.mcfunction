tag @s add wait
execute if score %map game matches 0 as @e[type=#minecraft:boats] at @s if block ~ ~-1 ~ netherite_block run tp @s 1521 71 337 180 0
execute if score %map game matches 1 as @e[type=#minecraft:boats] at @s if block ~ ~-1 ~ netherite_block run tp @s 1710 96 87 90 0
scoreboard players add @s laps 1
title @s title ["LAP ",{"score":{"name":"@s","objective":"laps"}}]
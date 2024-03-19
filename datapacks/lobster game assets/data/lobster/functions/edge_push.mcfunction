execute as @e[type=marker,tag=micro_edge] at @s run fill ~.3 -15 ~.3 ~-.3 47 ~-.3 minecraft:air
execute as @e[type=marker,tag=micro_edge] at @s run tp ^ ^ ^1

execute as @e[type=marker,tag=micro_lava] at @s run fill ^1 ^-2 ^ ^-1 ^-1 ^ minecraft:air replace minecraft:structure_void
execute as @e[type=marker,tag=micro_lava] at @s run fill ^1 ^-2 ^1 ^-1 ^-1 ^1 minecraft:structure_void keep
execute as @e[type=marker,tag=micro_lava] at @s run tp ^ ^ ^1

scoreboard players set %edge game 0
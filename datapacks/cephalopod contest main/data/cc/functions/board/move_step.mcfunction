# @s = board marker
scoreboard players remove .steps board_roll 1

# move
execute if block ~ ~-1 ~ magenta_glazed_terracotta run scoreboard players set .anim board_roll 15
execute if block ~ ~-1 ~ magenta_glazed_terracotta[facing=north] run tp @s ~ ~ ~ 0 0
execute if block ~ ~-1 ~ magenta_glazed_terracotta[facing=west] run tp @s ~ ~ ~ -90 0
execute if block ~ ~-1 ~ magenta_glazed_terracotta[facing=south] run tp @s ~ ~ ~ 180 0
execute if block ~ ~-1 ~ magenta_glazed_terracotta[facing=east] run tp @s ~ ~ ~ 90 0
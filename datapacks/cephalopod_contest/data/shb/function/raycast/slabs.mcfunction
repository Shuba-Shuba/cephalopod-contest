# boolean setup
scoreboard players set #bool raycast 0

# get y
execute store result score .y raycast run data get entity @s Pos[1] 100
scoreboard players operation .y raycast %= 100 raycast

## slab blockstate checks
# store onto scoreboard if bottom (this makes it only 2 block checks instead of 3)
execute store result score .type raycast if block ~ ~ ~ #minecraft:slabs[type=bottom]
# if double, stop regardless
execute if block ~ ~ ~ #minecraft:slabs[type=double] run scoreboard players set #bool raycast 1
# if bottom, stop if inside bottom
execute if score .type raycast matches 1 if score .y raycast matches ..55 run scoreboard players set #bool raycast 1
# if not top, stop if inside top
execute if score .type raycast matches 0 if score .y raycast matches 45.. run scoreboard players set #bool raycast 1
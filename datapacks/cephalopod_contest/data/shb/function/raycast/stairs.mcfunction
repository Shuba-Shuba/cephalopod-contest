# boolean setup
scoreboard players set #bool raycast 0

# get xyz
execute store result score #x raycast run data get entity @s Pos[0] 100
execute store result score .y raycast run data get entity @s Pos[1] 100
execute store result score #z raycast run data get entity @s Pos[2] 100
scoreboard players operation #x raycast %= 100 raycast
scoreboard players operation .y raycast %= 100 raycast
scoreboard players operation #z raycast %= 100 raycast

# goofy ahh rotation matrix
# you need to know linear algebra to understand but it saves a TON of block checks
scoreboard players operation .x raycast = #x raycast
scoreboard players operation .z raycast = #z raycast
execute if block ~ ~ ~ #minecraft:stairs[facing=north] run function shb:raycast/rotate_90
execute if block ~ ~ ~ #minecraft:stairs[facing=west] run function shb:raycast/rotate_180
execute if block ~ ~ ~ #minecraft:stairs[facing=south] run function shb:raycast/rotate_270

## stair shapes
# assume stair is straight (comphet)
execute if score .x raycast matches 55.. run scoreboard players set #bool raycast 1

# if stair is gay
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left] if score .z raycast matches ..45 run scoreboard players set #bool raycast 1

# if stair is bi+
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right] if score .z raycast matches 55.. run scoreboard players set #bool raycast 1

# if stair is ace spectrum
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left] if score .z raycast matches 45.. run scoreboard players set #bool raycast 0

# if stair is prefer not to say
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right] if score .z raycast matches ..55 run scoreboard players set #bool raycast 0

## BDSM
# is the stair bottom?
execute store result score #type raycast if block ~ ~ ~ #minecraft:stairs[half=bottom]

# if stair is bottom
execute if score #type raycast matches 1 if score .y raycast matches ..55 run scoreboard players set #bool raycast 1

# if stair is top (assume switch=top)
execute if score #type raycast matches 0 if score .y raycast matches 45.. run scoreboard players set #bool raycast 1
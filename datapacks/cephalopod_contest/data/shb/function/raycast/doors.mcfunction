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

## door blockstates
# if open
execute if block ~ ~ ~ #minecraft:doors[open=true,hinge=left] if score .z raycast matches ..25 run scoreboard players set #bool raycast 1
execute if block ~ ~ ~ #minecraft:doors[open=true,hinge=right] if score .z raycast matches 75.. run scoreboard players set #bool raycast 1
# if closed
execute if block ~ ~ ~ #minecraft:doors[open=false] if score .x raycast matches ..25 run scoreboard players set #bool raycast 1
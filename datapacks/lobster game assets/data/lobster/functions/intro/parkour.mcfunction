# map rng
execute store result score %map game run random value 0..2

# choose map
execute if score %map game matches 0 in sp:void run tp @a[tag=!out] -49 84 141 0 0
execute if score %map game matches 1 in sp:void run tp @a[tag=!out] -8 87 238 90 0
execute if score %map game matches 2 in sp:void run tp @a[tag=!out] -13 86 286 -90 0

# start round
scoreboard objectives setdisplay sidebar
#tellraw @a "\nGlass Jumps:\nGet to the other side. Each jump has 2 glass platforms. One of the platforms will break, and the other is safe.\n"
scoreboard players set %camera game 1
gamemode spectator @a[tag=!out]
schedule function lobster:mode/parkour 9s
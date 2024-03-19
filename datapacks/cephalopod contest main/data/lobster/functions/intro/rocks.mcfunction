# set amount of possible maps
execute store result score %map game run random value 0..3

# cameras
gamemode spectator @a[tag=!out]
scoreboard players set %camera game 7
execute if score %map game matches 0 run tp @a[tag=!out] 133 109 333
execute if score %map game matches 1 run tp @a[tag=!out] 132 109 452
execute if score %map game matches 2 run tp @a[tag=!out] 223 109 453
execute if score %map game matches 3 run tp @a[tag=!out] 223 109 332
schedule function lobster:mode/rocks 9s
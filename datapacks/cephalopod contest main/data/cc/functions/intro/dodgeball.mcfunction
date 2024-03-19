# set amount of possible maps
execute store result score %map game run random value 0..1

# cameras
gamemode spectator @a[tag=!out]
execute if score %map game matches 0 run tp @a[tag=!out] 292 105 153
execute if score %map game matches 1 run tp @a[tag=!out] 484 120 -38
scoreboard players set %camera game 8
schedule function cc:mode/dodgeball 9s
# set amount of possible maps
execute store result score %map game run random value 0..1
execute if score %map game matches 0 run tp @a[tag=!out] 1000 -47 -250
execute if score %map game matches 1 run tp @a[tag=!out] 1317 -16 -232

# cameras
gamemode spectator @a[tag=!out]
scoreboard players set %camera game 22
schedule function cc:mode/genwars 9s
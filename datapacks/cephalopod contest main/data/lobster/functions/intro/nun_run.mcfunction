# maps
execute store result score %map game run random value 0..1

# chunk load fix
execute if score %map game matches 0 run tp @a[tag=!out] -238.0 100 687.0
#execute if score %map game matches 1 run tp @a[tag=!out] -683.0 111 711.0
execute if score %map game matches 1 run tp @a[tag=!out] -956 113 633

# cameras
gamemode spectator @a[tag=!out]
scoreboard players set %camera game 9
schedule function lobster:mode/nun_run 350t

# win condition
scoreboard players reset * prayers
scoreboard players set #50 prayers 50
execute store result score %players game if entity @a[tag=!out,tag=!ded]
scoreboard players operation #win prayers = %players game
scoreboard players operation #win prayers *= #50 prayers
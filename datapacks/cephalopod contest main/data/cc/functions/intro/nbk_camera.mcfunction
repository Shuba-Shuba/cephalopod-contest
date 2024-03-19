# cameras
gamemode spectator @a[tag=!out]
scoreboard players set %camera game 16

# choose map
#execute store result score %map game run random value 0..1
scoreboard players set %map game 1
execute if score %map game matches 0 run tp @a[tag=!out] 1515 72 336
execute if score %map game matches 1 run tp @a[tag=!out] 1719 100 87

# start round
schedule function cc:intro/nbk 210t
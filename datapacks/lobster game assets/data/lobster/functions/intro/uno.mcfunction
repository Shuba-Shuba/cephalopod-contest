# map rng
scoreboard players set %map game 0

# choose map
execute if score %map game matches 0 in sp:void run tp @a[tag=!out] 0 69 0

# start round
scoreboard objectives setdisplay sidebar
scoreboard players set %camera game 18
gamemode spectator @a[tag=!out]
schedule function lobster:mode/uno 9s
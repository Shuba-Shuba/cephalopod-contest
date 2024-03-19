# cameras
gamemode spectator @a[tag=!out]
scoreboard players set %camera game 11
execute in sp:void run tp @a[tag=!out] 194 164 1025

# start round
schedule function lobster:mode/blocks 10s
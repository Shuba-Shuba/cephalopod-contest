# set amount of possible maps
execute store result score %map game run random value 0..2

# choose map
execute if score %map game matches 0 in sp:void run tp @a[tag=!out] 41 78 79
execute if score %map game matches 1 in sp:void run tp @a[tag=!out] 114 78 209
execute if score %map game matches 2 in sp:void run tp @a[tag=!out] -37 81 60

# start round
gamemode spectator @a[tag=!out]
scoreboard players set %camera game 6
scoreboard objectives setdisplay sidebar koth
#tellraw @a "\nKing Of The Hill:\nsupport jeSUS or else the american empire will nuke your face (get to the top/center for points)\n"
schedule function lobster:mode/koth 8s
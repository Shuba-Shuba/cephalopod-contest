# set amount of possible maps
execute store result score %map game run random value 0..6
scoreboard players set %camera game 2
gamemode spectator @a[tag=!out]
execute if score %map game matches 0 run tp @a[tag=!out] 167 112 -3
execute if score %map game matches 1 run tp @a[tag=!out] 171 118 -72
execute if score %map game matches 2 run tp @a[tag=!out] 187 115 -200
execute if score %map game matches 3 run tp @a[tag=!out] 113 85.5 57
execute if score %map game matches 4 run tp @a[tag=!out] 44 117 391
execute if score %map game matches 5 run tp @a[tag=!out] 247 129 609
execute if score %map game matches 6 run tp @a[tag=!out] 259 103 50

# start round
scoreboard objectives setdisplay sidebar
#tellraw @a "\nBomb Tag:\nSomebody has the bomb. The person with the bomb needs to punch someone else to pass it on. When the timer runs out, that person will explode.\n"
schedule function lobster:mode/bomb_tag 9s
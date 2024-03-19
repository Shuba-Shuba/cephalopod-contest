# set amount of possible maps
scoreboard players set %map game 0
scoreboard players set %camera game 20
gamemode spectator @a[tag=!out]
tp @a[tag=!out] 601 109 526

# start round
scoreboard objectives setdisplay sidebar
#tellraw @a "\nBomb Tag:\nSomebody has the bomb. The person with the bomb needs to punch someone else to pass it on. When the timer runs out, that person will explode.\n"
schedule function lobster:mode/talent 10s
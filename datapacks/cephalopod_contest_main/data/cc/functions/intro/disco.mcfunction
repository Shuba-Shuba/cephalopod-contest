# set amount of possible maps
scoreboard players set %map game 0
scoreboard players set %camera game 29
gamemode spectator @a[tag=!out]
execute if score %map game matches 0 run tp @a[tag=!out] -100 64 -100

# start round
scoreboard objectives setdisplay sidebar
schedule function cc:mode/disco 12s
function cc:disco_wall

# disco setup (FOR CAMERA ONLY)
scoreboard players set .disco game -1
scoreboard players set .disco.roll1 game 15
scoreboard players set .disco.roll2 game 30
scoreboard players set .disco.roll3 game 45
scoreboard players set .disco.roll4 game 60
scoreboard players set .disco.remove game 120
scoreboard players set .disco.remove+20 game 140
# make .disco.increment.remove the change in time to find a block PLUS .disco.increment.roll * 4
# change in time to find a block = 40
# 20 + 5*4 = 40
scoreboard players set .disco.increment.remove game 40
scoreboard players set .disco.increment.roll game 5
scoreboard players set .disco.level game 0
bossbar set cc:time players
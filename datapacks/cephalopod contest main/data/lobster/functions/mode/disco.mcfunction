# camera reset
function lobster:camera_end

# player setup
execute if score %map game matches 0 in sp:void run tp @a[tag=!out] -100 65 -100
clear @a[tag=!out]
effect clear @a[tag=!out]
scoreboard players set %mode game 29

# disco setup
scoreboard players set .disco game -1
scoreboard players set .disco.roll1 game 15
scoreboard players set .disco.roll2 game 30
scoreboard players set .disco.roll3 game 45
scoreboard players set .disco.roll4 game 60
scoreboard players set .disco.remove game 150
scoreboard players set .disco.remove+20 game 170
# make .disco.increment.remove the change in time to find a block PLUS .disco.increment.roll * 4
# change in time to find a block = 12
# 12 + 2*4 = 20
scoreboard players set .disco.increment.remove game 20
scoreboard players set .disco.increment.roll game 2
scoreboard players set .disco.level game 0
bossbar set lobster:time players
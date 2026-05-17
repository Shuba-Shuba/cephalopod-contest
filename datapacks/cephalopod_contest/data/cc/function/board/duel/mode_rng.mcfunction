# execute store result score #tmp game run random value 1..5
scoreboard players set #tmp game 2

# dodgeball
execute if score #tmp game matches 1 run scoreboard players set %premode game 8
# sumo
execute if score #tmp game matches 2 run scoreboard players set %premode game 10
# skywars
execute if score #tmp game matches 3 run scoreboard players set %premode game 15
# spleef
execute if score #tmp game matches 4 run scoreboard players set %premode game 17
# illegal dog fight
execute if score #tmp game matches 5 run scoreboard players set %premode game 23

scoreboard players reset #tmp game
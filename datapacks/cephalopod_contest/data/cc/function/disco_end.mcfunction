# speed up
scoreboard players operation .disco.remove game -= .disco.increment.remove game
scoreboard players operation .disco.remove+20 game -= .disco.increment.remove game
execute store result score .disco.roll2 game store result score .disco.roll3 game store result score .disco.roll4 game run scoreboard players operation .disco.roll1 game -= .disco.increment.roll game
scoreboard players operation .disco.roll2 game *= 2 calc
scoreboard players operation .disco.roll3 game *= 3 calc
scoreboard players operation .disco.roll4 game *= 4 calc

# start next level or end round
scoreboard players set .disco game -1
scoreboard players add .disco.level game 1
execute if score .disco.level game matches 7 run tag @a[tag=!out,tag=!ded] add winner
execute if score .disco.level game matches 7 run function cc:end
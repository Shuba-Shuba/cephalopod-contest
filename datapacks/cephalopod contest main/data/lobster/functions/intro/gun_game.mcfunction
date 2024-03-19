## choose map
#execute store result score %map game run random value 0..7
scoreboard players set %map game 6
execute if score %map game matches 0 run tp @a[tag=!out] 117 100 -9
execute if score %map game matches 1 run tp @a[tag=!out] 343 140 620
execute if score %map game matches 2 run tp @a[tag=!out] 396 105 600
execute if score %map game matches 3 run tp @a[tag=!out] 448 115 620
execute if score %map game matches 4 run tp @a[tag=!out] -438 140 1045
execute if score %map game matches 5 run tp @a[tag=!out] 582 102 611
execute if score %map game matches 6 run tp @a[tag=!out] 639 107 613
execute if score %map game matches 7 run tp @a[tag=!out] 714 150 617

## start round
gamemode spectator @a[tag=!out]
scoreboard players set %camera game 13
#tellraw @a "\nGun Game:\nEach player starts with a good weapon, and after each kill you get a worse one, the final weapon being a knife. After getting a knife kill, you are safe. Last player to get a knife kill loses. Weapon set is the same as the lights out loot table + sniper rifle, and everyone progresses in the same order.\n"
schedule function lobster:mode/gun_game 9s
# set amount of possible maps
scoreboard players set %map game 0
scoreboard players set %camera game 28
gamemode spectator @a[tag=!out]
execute if score %map game matches 0 in minecraft:the_end run tp @a[tag=!out] 25 80 0

# start round
scoreboard objectives setdisplay sidebar
schedule function cc:mode/boss_fight 12s
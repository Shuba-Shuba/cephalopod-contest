## choose map
scoreboard players set %map game 0

# start round
gamemode spectator @a[tag=!out]
scoreboard players set %camera game 25
execute if score %map game matches 0 run tp @a[tag=!out] 279 10 -821
schedule function cc:mode/micro_battles 12s
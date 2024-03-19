## choose map
scoreboard players set %map game 0

## start round
gamemode spectator @a[tag=!out]
scoreboard players set %camera game 27
execute if score %map game matches 0 run tp @a[tag=!out] 412 91 444
schedule function cc:mode/cs 12s

# teams
scoreboard players set %team game 1
function cc:team_split
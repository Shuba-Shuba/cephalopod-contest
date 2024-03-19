## choose map
scoreboard players set %map game 0

## start round
gamemode spectator @a[tag=!out]
scoreboard players set %camera game 26
execute if score %map game matches 0 run tp @a[tag=!out] 437.0 93 472
schedule function cc:mode/payload 12s

# teams
scoreboard players set %team game 1
function cc:team_split
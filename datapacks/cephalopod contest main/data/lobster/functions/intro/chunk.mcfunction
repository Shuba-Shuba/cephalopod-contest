# cameras
gamemode spectator @a[tag=!out]
scoreboard players set %camera game 420
execute in lobster:chunk run tp @a[tag=!out] 6 -43 26

# start round
schedule function lobster:mode/chunk 9s
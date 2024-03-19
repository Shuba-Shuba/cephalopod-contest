# cameras
gamemode spectator @a[tag=!out]
scoreboard players set %camera game 420
execute in cc:chunk run tp @a[tag=!out] 6 -43 26

# start round
schedule function cc:mode/chunk 9s
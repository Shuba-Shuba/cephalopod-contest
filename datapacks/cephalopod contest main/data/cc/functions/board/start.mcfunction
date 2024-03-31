tellraw @a {"text":"nah bruh fr bruh this is board game mode bruh!"}

# reset mode rng pool
tag @e[type=marker,tag=mode_rng] remove used

# scoreboard setup
scoreboard players set %in game 2
scoreboard players set %board game 1
scoreboard players set %board_players game 0
scoreboard players set %board_players_first game 0
scoreboard players reset * board_await
scoreboard players reset * board_money
scoreboard players reset * board_stars
scoreboard players reset * board_roll
scoreboard players reset * board_turn
scoreboard players reset * board_fork
scoreboard players reset * board_shop
scoreboard players set @a deaths 0

# player setup
gamemode spectator @a[tag=!out]
scoreboard players set .i board_turn -1
execute as @a[tag=!out,sort=random] store result score @s board_turn run scoreboard players add .i board_turn 1
tp @a[tag=!out] 6 44 -12 90 0
execute as @a[tag=!out] at @s in cc:void run function cc:board/init_player_marker
execute as @a[tag=!out] in cc:void run function cc:board/add_name_to_list
execute in cc:void run function cc:board/place_star

# start
scoreboard players set .count board_turn 1
tellraw @a "TURN 1"
scoreboard players set .i board_turn -1
schedule function cc:board/end_turn 2s

execute as @a[tag=!out] run function cc:board/update_display
scoreboard objectives setdisplay sidebar board_display
tellraw @a {text:"nah bruh fr bruh this is board game mode bruh!"}

# forceload board
forceload add -486 -1185 -418 -1117

# reset mode rng pool
tag @e[type=item_display,tag=mode_rng] remove used

# scoreboard setup
scoreboard players set %in game 2
scoreboard players set %board game 1
scoreboard players set %board_players_online game 0
scoreboard players set %board_players_all game 0
scoreboard players reset * board_await
scoreboard players reset * board_money
scoreboard players reset * board_stars
scoreboard players reset * board_roll
scoreboard players reset * board_turn
scoreboard players reset * board_fork
scoreboard players reset * board_shop
scoreboard players reset * board_display
scoreboard players set @a deaths 0

# create board space list - this defines start space
execute in cc:void positioned -476 -23 -1154 summon marker run function cc:board/spacelist/create

# player setup
execute as @a[tag=!out,sort=random] run function cc:board/init_player with storage cc:board spacelist[0]
execute in cc:void run function cc:board/place_star

# start
scoreboard players set .count board_turn 1
tellraw @a "TURN 1"
scoreboard players set .i board_turn -1
schedule function cc:board/end_turn 2s

scoreboard objectives setdisplay sidebar board_display
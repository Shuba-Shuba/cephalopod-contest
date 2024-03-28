# reset board
kill @e[type=marker,tag=board_player]
kill @e[type=zombie,tag=board_player_placeholder]
kill @e[type=armor_stand,tag=board_player]
data remove storage cc:board players
data remove storage cc:board tmp
scoreboard players set %board game 0
scoreboard players set %board_players game 0
scoreboard players set %board_players_first game 0
scoreboard players reset * board_await
scoreboard players reset * board_money
scoreboard players reset * board_stars
scoreboard players reset * board_roll
scoreboard players reset * board_turn
scoreboard players reset * board_fork
scoreboard players reset * board_shop

# go to lobby
function cc:lobby
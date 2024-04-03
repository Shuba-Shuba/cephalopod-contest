# setup player
gamemode spectator
execute store result score @s board_turn run scoreboard players add .i board_turn 1
tp @s 6 44 -12 90 0
function cc:board/init_player_marker
function cc:board/add_name_to_list

# announce
tellraw @a ["Added ",{"selector":"@s"}," to the board"]
tellraw @s ["You've been added to board game mode. "]
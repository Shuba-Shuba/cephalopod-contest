# @s = item_display
tag @s add board_player
rotate @s 90 0
execute store result score @s board_turn run scoreboard players add %board_players_all game 1
return run scoreboard players remove @s board_turn 1
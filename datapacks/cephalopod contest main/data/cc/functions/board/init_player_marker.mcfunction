# @s = player
summon marker 6 44 -12 {Tags:["init","board_player"],Rotation:[90f,0f]}
scoreboard players operation @e[type=marker,tag=init,tag=board_player] board_turn = @s board_turn
tag @e[type=marker,tag=init,tag=board_player] remove init
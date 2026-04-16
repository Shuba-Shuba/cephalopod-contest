# @s = player
summon item_display 6 44 -12 {Tags:["init","board_player"],Rotation:[90.0f,0.0f]}
scoreboard players operation @e[type=item_display,tag=init,tag=board_player] board_turn = @s board_turn
tag @e[type=item_display,tag=init,tag=board_player] remove init
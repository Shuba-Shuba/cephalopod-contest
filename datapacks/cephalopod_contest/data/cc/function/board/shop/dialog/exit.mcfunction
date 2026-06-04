# @s = player
# @e[type=item_display,tag=this] player's board item_display
tag @e[type=item_display] remove this
execute as @e[type=item_display,tag=board_player] if score @s board_turn = .i board_turn run tag @s add this

dialog clear @s
execute if score .steps board_roll matches 0 as @e[type=item_display,tag=this] at @s run function cc:board/end_turn
execute if score .steps board_roll matches 1.. as @e[type=item_display,tag=this] at @s run function cc:board/move/step
scoreboard players reset @s board_await
scoreboard players reset @s board_shop

tag @e[type=item_display] remove this
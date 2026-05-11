# $(name) = username of player who left
# @e[type=item_display,tag=this] player's board item_display

execute as @e[type=item_display,tag=this] at @s run function cc:board/move/step
$scoreboard players reset $(name) board_await
$scoreboard players reset $(name) board_fork
say leave fork
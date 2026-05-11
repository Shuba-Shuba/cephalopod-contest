# $(name) = username of player who left
# @e[type=item_display,tag=this] player's board item_display

# leave shop and continue movement
execute if score .steps board_roll matches 1.. as @e[type=item_display,tag=this] at @s run function cc:board/move/step
$scoreboard players reset $(name) board_shop
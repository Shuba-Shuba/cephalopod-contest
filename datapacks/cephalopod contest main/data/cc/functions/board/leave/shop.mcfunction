# $(name) = username of player who left
# @e[type=marker,tag=this] player's board marker
tag @e[type=marker] remove this
execute as @e[type=marker,tag=board_player] if score @s board_turn = .i board_turn run tag @s add this

# leave shop and continue movement
execute if score .steps board_roll matches 1.. as @e[type=marker,tag=this] at @s run function cc:board/move_step
$scoreboard players reset $(name) board_shop

tag @e[type=marker] remove this
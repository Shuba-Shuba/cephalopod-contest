# @s = player
# @e[type=marker,tag=this] player's board marker
tag @e[type=marker] remove this
execute as @e[type=marker,tag=board_player] if score @s board_turn = .i board_turn run tag @s add this

# items
execute if score @s board_shop matches 1 run function cc:board/buy/star
execute if score @s board_shop matches 100 run function cc:board/buy/weed
execute if score @s board_shop matches 101 run function cc:board/buy/coke
execute if score @s board_shop matches 200 run function cc:board/buy/glue
execute if score @s board_shop matches 201 run function cc:board/buy/bat
execute if score @s board_shop matches 300 run function cc:board/buy/shotgun
execute if score @s board_shop matches 301 run function cc:board/buy/backstab

# leave shop
execute if score .steps board_roll matches 0 as @e[type=marker,tag=this] at @s run function cc:board/end_turn
execute if score .steps board_roll matches 1.. as @e[type=marker,tag=this] at @s run function cc:board/move_step
scoreboard players reset @s board_await
scoreboard players reset @s board_shop

tag @e[type=marker] remove this
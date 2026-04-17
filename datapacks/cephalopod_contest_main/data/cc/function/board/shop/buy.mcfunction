# @s = player
# @e[type=item_display,tag=this] player's board item_display
tag @e[type=item_display] remove this
execute as @e[type=item_display,tag=board_player] if score @s board_turn = .i board_turn run tag @s add this

dialog clear @s

# items
execute if score @s board_shop matches 1 run function cc:board/shop/buy/star
execute if score @s board_shop matches 100 run function cc:board/shop/buy/weed
execute if score @s board_shop matches 101 run function cc:board/shop/buy/coke
execute if score @s board_shop matches 200 run function cc:board/shop/buy/glue
execute if score @s board_shop matches 201 run function cc:board/shop/buy/bat
execute if score @s board_shop matches 300 run function cc:board/shop/buy/shotgun
execute if score @s board_shop matches 301 run function cc:board/shop/buy/backstab

# leave shop
execute if score .steps board_roll matches 0 as @e[type=item_display,tag=this] at @s unless entity @e[type=item_display,tag=!this,tag=board_player,distance=..1] run function cc:board/end_turn
execute if score .steps board_roll matches 0 at @e[type=item_display,tag=this] if entity @e[type=item_display,tag=!this,tag=board_player,distance=..1] run function cc:board/fight
execute if score .steps board_roll matches 1.. as @e[type=item_display,tag=this] at @s run function cc:board/move/step
scoreboard players reset @s board_await
scoreboard players reset @s board_shop

tag @e[type=item_display] remove this
# @s = player
# @e[type=item_display,tag=this] player's board item_display
tag @e[type=item_display] remove this
execute as @e[type=item_display,tag=board_player] if score @s board_turn = .i board_turn run tag @s add this

# items
# TODO: make this data-driven
# dice macro args copied from shop function
execute if score @s board_shop matches 1 run function cc:board/item/buy/star
execute if score @s board_shop matches 2 run function cc:board/item/buy/weed
execute if score @s board_shop matches 3 run function cc:board/item/buy/coke
execute if score @s board_shop matches 4 run function cc:board/item/buy/glue
execute if score @s board_shop matches 5 run function cc:board/item/buy/dice {name:'"Super Die"', description:'"Normal + 1"', rolls:[I;2,3,4,5,6,7], price:20, id:5}
execute if score @s board_shop matches 6 run function cc:board/item/buy/dice {name:'"Gambler\'s Grave"', description:'"Same average as normal die"', rolls:[I;0,1,1,2,8,9], price:10, id:6}
execute if score @s board_shop matches 7 run function cc:board/item/buy/dice {name:'"Extended Die"', description:'"Yes 0s and 7s"', rolls:[I;0,1,2,3,4,5,6,7], price:7, id:7}
execute if score @s board_shop matches 8 run function cc:board/item/buy/dice {name:'"Truncated Die"', description:'"No 1s or 6s"', rolls:[I;2,3,4,5], price:7, id:8}
execute if score @s board_shop matches 9 run function cc:board/item/buy/dice {name:'"Safety Die"', description:'"Slightly less than normal die on average"', rolls:[I;3,3,3,4,4], price:4, id:9}

# leave shop
dialog clear @s
execute if score .steps board_roll matches 0 as @e[type=item_display,tag=this] at @s run function cc:board/end_turn
execute if score .steps board_roll matches 1.. as @e[type=item_display,tag=this] at @s run function cc:board/move/step
scoreboard players reset @s board_await
scoreboard players reset @s board_shop

tag @e[type=item_display] remove this
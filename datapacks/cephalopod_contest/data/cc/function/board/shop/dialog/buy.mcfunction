# get item bought (overwrites tmp)
execute store result storage cc:board tmp int 1 run scoreboard players remove @s board_shop 1
function cc:board/shop/dialog/get_item with storage cc:board

# process transaction
execute if data storage cc:board tmp.star run function cc:board/item/buy/star
execute if data storage cc:board tmp.rolls run function cc:board/item/buy/dice with storage cc:board tmp
execute if data storage cc:board tmp.id run function cc:board/item/buy/by_id with storage cc:board tmp
data remove storage cc:board tmp

# exit shop
function cc:board/shop/dialog/exit
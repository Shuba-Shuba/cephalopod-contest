# @s = player
# wait for player's choice
tag @s remove this
function cc:board/await_start {time:10}
# scoreboard players enable @s board_shop
tellraw @a ["",{selector:"@s"}," be shopping"]

# shop UI
data modify storage cc:board shop_id set from block ^ ^-32 ^1 front_text.messages[1]
function cc:board/shop/by_id with storage cc:board
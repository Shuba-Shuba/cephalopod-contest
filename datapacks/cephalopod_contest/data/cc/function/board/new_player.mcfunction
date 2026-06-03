# setup player
function cc:board/init_player with storage cc:board spacelist[0]

# announce
tellraw @a ["Added ",{selector:"@s"}," to the board"]
tellraw @s ["You've been added to board game mode. "]
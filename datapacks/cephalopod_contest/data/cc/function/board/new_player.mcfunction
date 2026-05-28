# setup player
function cc:board/init_player

# announce
tellraw @a ["Added ",{selector:"@s"}," to the board"]
tellraw @s ["You've been added to board game mode. "]
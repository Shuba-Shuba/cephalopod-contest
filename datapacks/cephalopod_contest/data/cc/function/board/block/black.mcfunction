# @s = player
# wait for player's choice
schedule clear cc:board/end_turn
function cc:board/await_start {time:15}
tellraw @a ["",{selector:"@s"}," is choosing someone to duel"]
function cc:board/duel/dialog/generate
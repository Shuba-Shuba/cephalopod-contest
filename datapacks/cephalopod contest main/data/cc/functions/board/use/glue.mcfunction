tellraw @a ["",{"selector":"@s"}," placed a glue trap"]
clear @s orange_dye{board:200} 1
function cc:board/await_start {time:10}

execute as @e[type=marker,tag=board_player] if score @s board_turn = .i board_turn at @s run setblock ~ ~ ~ honey_block
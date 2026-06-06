tellraw @a ["",{selector:"@s"}," placed a glue trap"]
clear @s carrot_on_a_stick[custom_data~{board:glue}] 1
function cc:board/await_start {time:10}

execute as @e[type=item_display,tag=board_player] if score @s board_turn = .i board_turn at @s run setblock ~ ~ ~ honey_block
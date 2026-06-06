tellraw @a ["",{selector:"@s"}," moves to a random space"]
execute as @e[type=item_display,tag=board_player] if score @s board_turn = .i board_turn at @s run function cc:board/move/to_random_space
clear @s carrot_on_a_stick[custom_data~{board:chorus}] 1
function cc:board/await_start {time:10}
tellraw @a ["",{selector:"@s"}," moves to the star"]
execute as @e[type=item_display,tag=board_player] if score @s board_turn = .i board_turn at @s store result score #tmp calc run function cc:board/move/to_star
execute store result storage cc:board tmp.time int 0.05 run scoreboard players add #tmp calc 210
function cc:board/await_start with storage cc:board tmp
data remove storage cc:board tmp
clear @s carrot_on_a_stick[custom_data~{board:star_tp}] 1
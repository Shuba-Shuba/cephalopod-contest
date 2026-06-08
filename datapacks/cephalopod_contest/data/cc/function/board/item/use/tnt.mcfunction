tellraw @a ["",{selector:"@s"}," placed a TNT trap"]
clear @s carrot_on_a_stick[custom_data~{board:tnt}] 1
function cc:board/await_start {time:10}

execute as @e[type=item_display,tag=board_player] if score @s board_turn = .i board_turn at @s run setblock ~ ~ ~ tnt
execute as @e[type=item_display,tag=board_player] if score @s board_turn = .i board_turn at @s run summon marker ~ ~ ~ {Tags:[board_tnt_trap,init]}
scoreboard players operation @n[type=marker,tag=init] board_turn = @s board_turn
tag @e[type=marker] remove init
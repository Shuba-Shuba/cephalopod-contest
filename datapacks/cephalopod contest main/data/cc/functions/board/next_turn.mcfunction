scoreboard players set .auto board_turn 0
execute as @a[tag=!out] if score @s board_turn = .i board_turn at @s run function cc:board/roll
execute as @a[tag=!out] if score @s board_turn = .i board_turn at @s run function cc:board/get_items
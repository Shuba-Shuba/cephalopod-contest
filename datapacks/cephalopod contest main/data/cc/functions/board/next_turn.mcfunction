scoreboard players set .auto board_turn 0
execute as @a[tag=!out] if score @s board_turn = .i board_turn if entity @s[tag=glued] at @s run return run function cc:board/glued
execute as @a[tag=!out] if score @s board_turn = .i board_turn at @s run function cc:board/start_turn
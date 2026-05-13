tellraw @a ["skipping ",{selector:"@s"}," because they landed on a glue trap last turn..."]
execute as @e[type=item_display,tag=board_player] if score @s board_turn = .i board_turn at @s run setblock ~ ~ ~ air destroy
tag @s remove glued
schedule function cc:board/end_turn 2s
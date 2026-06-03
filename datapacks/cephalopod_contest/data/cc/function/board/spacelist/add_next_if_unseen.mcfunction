# y offset - do not use "at @s" here
data modify storage cc:board dy set from block ^ ^ ^1 front_text.messages[0]
execute if data storage cc:board {dy:""} positioned ^ ^ ^2 run function cc:board/move/y_offset with storage cc:board
execute unless data storage cc:board {dy:""} run function cc:board/move/y_offset with storage cc:board
tag @s remove tmp_next_space

# go to next space
execute at @s run function cc:board/move/find_next

# add space if unseen
execute at @s unless entity @e[type=marker,tag=tmp_space_seen,distance=..0.1] run function cc:board/spacelist/add_space
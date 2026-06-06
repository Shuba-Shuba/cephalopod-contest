# y offset
execute rotated as @s run data modify storage cc:board dy set from block ^ ^-32 ^1 front_text.messages[0]
execute if data storage cc:board {dy:""} rotated as @s summon marker positioned ^ ^-32 ^2 run function cc:board/move/y_offset with storage cc:board
execute unless data storage cc:board {dy:""} rotated as @s summon marker positioned ~ ~-32 ~ run function cc:board/move/y_offset with storage cc:board

# find next space
execute rotated as @s as @n[type=marker,tag=tmp_next_space] positioned as @s run function cc:board/move/find_next

# move
execute store result score .anim board_roll run function cc:board/move/to_marker
# get space data
execute store result storage cc:board tmp.x int 1 run data get entity @s Pos[0]
execute store result storage cc:board tmp.y int 1 run data get entity @s Pos[1]
execute store result storage cc:board tmp.z int 1 run data get entity @s Pos[2]
execute if block ~ ~ ~ yellow_concrete if block ~ ~ ~1 oak_wall_sign run data modify storage cc:board tmp.shop set from block ~ ~ ~1 front_text.messages[1]
execute if block ~ ~ ~ yellow_concrete if block ~1 ~ ~ oak_wall_sign run data modify storage cc:board tmp.shop set from block ~1 ~ ~ front_text.messages[1]
execute if block ~ ~ ~ yellow_concrete if block ~ ~ ~-1 oak_wall_sign run data modify storage cc:board tmp.shop set from block ~ ~ ~-1 front_text.messages[1]
execute if block ~ ~ ~ yellow_concrete if block ~-1 ~ ~ oak_wall_sign run data modify storage cc:board tmp.shop set from block ~-1 ~ ~ front_text.messages[1]
execute unless block ~ ~ ~ #cc:noncounting_board_space run data modify storage cc:board spacelist append from storage cc:board tmp
data remove storage cc:board tmp

# mark space as seen
summon marker ~ ~ ~ {Tags:[tmp_space_seen]}

# next space
execute if block ~ ~ ~1 oak_wall_sign rotated 0 0 run function cc:board/spacelist/add_next_if_unseen
execute if block ~1 ~ ~ oak_wall_sign rotated -90 0 run function cc:board/spacelist/add_next_if_unseen
execute if block ~ ~ ~-1 oak_wall_sign rotated 180 0 run function cc:board/spacelist/add_next_if_unseen
execute if block ~-1 ~ ~ oak_wall_sign rotated 90 0 run function cc:board/spacelist/add_next_if_unseen
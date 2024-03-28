# @s = player's board marker
# @p[tag=this] = player
tag @a remove this
execute as @a[tag=!out] if score @s board_turn = .i board_turn run tag @s add this

# "non-passable" events activate only if players land on the space and the end of the roll
# "passable" events activate there even if they are passing it
# all events except forks get skipped w/o player because they have "as @p[tag=this]"; forks have separate auto function

# passable events - return to cut off movement loop
execute if block ~ ~-2 ~ pink_concrete as @p[tag=this] run return run function cc:board/block/fork
execute if block ~ ~-2 ~ pink_concrete run return run function cc:board/block/fork_auto
# fork skips step count because it doesn't consume one
tellraw @a {"score":{"name":".steps","objective":"board_roll"}}
execute if block ~ ~-2 ~ yellow_concrete as @p[tag=this] run return run function cc:board/block/shop

# non-passable events
execute if score .steps board_roll matches 0 if block ~ ~-2 ~ blue_concrete as @p[tag=this] run function cc:board/block/blue
execute if score .steps board_roll matches 0 if block ~ ~-2 ~ red_concrete as @p[tag=this] run function cc:board/block/red
execute if score .steps board_roll matches 0 if block ~ ~-2 ~ purple_concrete as @p[tag=this] run function cc:board/block/purple
execute if score .steps board_roll matches 0 if block ~ ~-2 ~ lime_concrete as @p[tag=this] run function cc:board/block/green
execute if score .steps board_roll matches 0 if block ~ ~-2 ~ black_concrete as @p[tag=this] run function cc:board/block/black
execute if score .steps board_roll matches 0 run schedule function cc:board/end_turn 2s

# step
execute if score .steps board_roll matches 1.. run function cc:board/move_step

tag @a remove this
# @s = player's board item_display
# @p[tag=this] = player
tag @a remove this
tag @s add this
execute as @a[tag=!out] if score @s board_turn = .i board_turn run tag @s add this

# counting or not counting...?
# give back a step if noncounting
execute if block ~ ~-32 ~ #cc:noncounting_board_space run scoreboard players add .steps board_roll 1
execute unless block ~ ~-32 ~ #cc:noncounting_board_space run tellraw @a {score:{name:".steps",objective:"board_roll"}}

# "non-passable" events activate only if players land on the space and the end of the roll
# "passable" events activate there even if they are passing it
# all events except forks get skipped w/o player because they have "as @p[tag=this]"; forks have separate auto function

# passable events - return to cut off movement loop
execute if block ~ ~ ~ honey_block run return run function cc:board/block/glue
execute if block ~ ~-32 ~ pink_concrete as @p[tag=this] run return run function cc:board/block/fork
execute if block ~ ~-32 ~ pink_concrete run return run function cc:board/move/step
execute if block ~ ~-32 ~ yellow_concrete as @p[tag=this] run return run function cc:board/block/shop

# non-passable events
execute if score .steps board_roll matches 0 run function cc:board/move/check_non_passable

# step
execute if score .steps board_roll matches 1.. run function cc:board/move/step

tag @e remove this
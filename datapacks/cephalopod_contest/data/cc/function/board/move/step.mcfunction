# @s = board item_display
scoreboard players remove .steps board_roll 1

# get direction to next space
execute if block ~ ~-32 ~1 oak_wall_sign run rotate @s 0 0
execute if block ~1 ~-32 ~ oak_wall_sign run rotate @s -90 0
execute if block ~ ~-32 ~-1 oak_wall_sign run rotate @s 180 0
execute if block ~-1 ~-32 ~ oak_wall_sign run rotate @s 90 0

# if auto, rotate player placeholder
execute if score .auto board_turn matches 1 rotated as @s on passengers run rotate @s ~ ~

# go to next space
function cc:board/move/go_forward
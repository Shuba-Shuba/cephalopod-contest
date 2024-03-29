# @s = player currently rolling, or DNE if left during start phase
# in the future, there may be multiple dice to choose from; maybe even a physics simulation for a dice block

# end start phase
scoreboard players reset .start board_roll
scoreboard players reset @s board_await
clear @s magenta_glazed_terracotta{board:1}

# roll
tag @s add this
execute store result score .steps board_roll run random roll 1..6
scoreboard players operation .steps board_roll *= .multiplier board_roll
execute if score .multiplier board_roll matches 2.. run tellraw @a ["After x",{"score":{"name":".multiplier","objective":"board_roll"}}," multiplier: ",{"score":{"name":".steps","objective":"board_roll"},"bold":true}]
execute as @e[type=marker,tag=board_player] if score @s board_turn = .i board_turn at @s run function cc:board/move_step
tag @s remove this
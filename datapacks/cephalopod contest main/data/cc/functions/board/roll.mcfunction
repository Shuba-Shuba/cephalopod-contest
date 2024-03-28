# @s = player currently rolling
# in the future, there may be multiple dice to choose from; maybe even a physics simulation for a dice block
tag @s add this
scoreboard players set .start board_roll 1
execute as @e[type=armor_stand,tag=board_player] if score @s board_turn = .i board_turn run kill @s
execute as @e[type=marker,tag=board_player] if score @s board_turn = .i board_turn store result score .steps board_roll run random roll 1..6
execute as @e[type=marker,tag=board_player] if score @s board_turn = .i board_turn at @s run function cc:board/move_step
execute as @e[type=marker,tag=board_player] if score @s board_turn = .i board_turn at @s run playsound entity.evoker.prepare_wololo master @a ~ ~ ~ 2 1 1
gamemode adventure
effect give @s glowing infinite 0 true
tag @s remove this
scoreboard players reset .start board_roll
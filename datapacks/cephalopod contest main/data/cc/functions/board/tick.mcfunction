effect give @a[tag=!out] resistance 3 255 true
scoreboard players set @a[tag=!out] offhand_carrot 1

# await player action
execute as @a[scores={board_await=1}] at @s run function cc:board/await_fallback
execute as @a[scores={board_await=1..}] at @s run function cc:board/await

# movement step animation
execute if score .anim board_roll matches 1.. as @e[type=marker,tag=board_player] if score @s board_turn = .i board_turn at @s run tp ^ ^ ^0.2
execute if score .anim board_roll matches 1.. as @e[type=marker,tag=board_player] if score @s board_turn = .i board_turn in cc:void positioned as @s as @a[tag=!out] if score @s board_turn = .i board_turn run tp @s ~ ~ ~
execute if score .anim board_roll matches 1.. as @e[type=marker,tag=board_player] if score @s board_turn = .i board_turn in cc:void positioned as @s as @e[type=zombie,tag=board_player_placeholder] if score @s board_turn = .i board_turn run tp @s ~ ~ ~
execute if score .anim board_roll matches 0.. run scoreboard players remove .anim board_roll 1
execute if score .anim board_roll matches 0 as @e[type=marker,tag=board_player] if score @s board_turn = .i board_turn at @s run function cc:board/move_check

# verify player list
scoreboard players operation %board_players_prev game = %board_players game
execute store result score %board_players game if entity @a[tag=!out]
execute unless score %board_players_prev game = %board_players game run function cc:board/leave
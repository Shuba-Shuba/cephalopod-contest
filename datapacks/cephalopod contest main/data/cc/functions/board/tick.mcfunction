effect give @a[tag=!out,tag=!fight] resistance 3 255 true
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

# no item dropping
execute at @a[tag=!out] as @e[type=item,distance=..10] at @s on origin run data modify entity @e[type=item,sort=nearest,limit=1] Owner set from entity @s UUID
execute at @a[tag=!out] as @e[type=item,distance=..10] run data modify entity @s PickupDelay set value 0s
execute at @a[tag=!out] as @e[type=item,distance=..10] at @s on origin run tp @e[type=item,sort=nearest,limit=1] @s

# fight
execute if score %fight game matches 1 run function cc:backstab_tick
execute if score %fight game matches 1 as @a[scores={deaths=1..},tag=fight] run function cc:board/fight_death
execute if score %fight game matches 1 if entity @a[tag=fight] run scoreboard players add %tick game 1
execute if score %fight game matches 1 if score %tick game matches 20.. run scoreboard players add %second game 1
execute if score %fight game matches 1 if score %tick game matches 20.. run bossbar set cc:time name {"score":{"objective":"game","name":"%second"}}
execute if score %fight game matches 1 if score %tick game matches 20.. if score %second game matches 5 run tellraw @a "Resistance and weakness have worn off."
execute if score %fight game matches 1 if score %tick game matches 20.. run scoreboard players set %tick game 0
execute if score %fight game matches 1 store result score %players game if entity @a[tag=fight,tag=!fight_loser]
execute if score %fight game matches 1 if score %players game matches ..1 run function cc:board/fight_end
effect give @a[tag=!out] resistance 3 255 true
scoreboard players set @a[tag=!out] offhand_carrot 1

# await player action
execute as @a[scores={board_await=1}] at @s run function cc:board/await_fallback
execute as @a[scores={board_await=1..}] at @s run function cc:board/await

# movement step animation
execute if score .anim board_roll matches 1.. as @e[type=item_display,tag=board_player] if score @s board_turn = .i board_turn in cc:void positioned as @s as @a[tag=!out] if score @s board_turn = .i board_turn run ride @s mount @n[type=item_display,tag=board_player]
execute if score .anim board_roll matches 0.. run scoreboard players remove .anim board_roll 1
execute if score .anim board_roll matches 0 as @e[type=item_display,tag=board_player] if score @s board_turn = .i board_turn at @s run function cc:board/move/check

# if player leaves
scoreboard players operation %board_players_online_prev game = %board_players_online game
execute store result score %board_players_online game if entity @a[tag=!out,tag=!joining]
execute if score %board_players_online game < %board_players_online_prev game run function cc:board/leave
# special case: someone left same tick as someone else joined
# solution: don't process joining players unless we know nobody left this tick
execute unless score %board_players_online game < %board_players_online_prev game as @a[tag=joining] run function cc:board/join

# no item dropping
execute at @a[tag=!out] as @e[type=item,distance=..10] at @s on origin run data modify entity @e[type=item,sort=nearest,limit=1] Owner set from entity @s UUID
execute at @a[tag=!out] as @e[type=item,distance=..10] run data modify entity @s PickupDelay set value 0s
execute at @a[tag=!out] as @e[type=item,distance=..10] at @s on origin run tp @e[type=item,sort=nearest,limit=1] @s
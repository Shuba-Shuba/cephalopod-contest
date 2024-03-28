# player reset
kill @e[type=#cc:camera,tag=camera]
gamemode adventure @a[tag=!out]
#kill @a[tag=!out]
execute in cc:void run tp @a[tag=!out] 0 69 0 0 0
clear @a[tag=!out]
effect clear @a[tag=!out]
scoreboard players set %in game 0
scoreboard players set %map game 0
scoreboard players set %mode game 0
stopsound @a
say lobby moment
tag @a remove ded
tag @a remove winner
tag @a remove button
schedule clear cc:red_sound
schedule clear cc:red_light

# PRESIDENT'S DAY IN MAY EVENT
execute if score %board game matches 0 run scoreboard objectives setdisplay sidebar event_money
execute if score %board game matches 0 as @a[scores={event_money=1..}] run function cc:get_event_money

# continue board game
execute if score %board game matches 1 run scoreboard players add .count board_turn 1
execute if score %board game matches 1 run tellraw @a ["TURN ",{"score":{"name":".count","objective":"board_turn"}}]
execute if score %board game matches 1 if score .count board_turn = board.turns config run tellraw @a "FINAL TURN"
execute if score %board game matches 1 as @a[tag=!out] run function cc:board/cash_rewards
execute if score %board game matches 1 as @a[tag=!out] run function cc:board/update_display
execute if score %board game matches 1 run scoreboard objectives setdisplay sidebar board_display
execute if score %board game matches 1 run scoreboard players set %in game 2
execute if score %board game matches 1 run scoreboard players set .i board_turn -1
execute if score %board game matches 1 run schedule function cc:board/end_turn 2s
execute if score %board game matches 1 as @e[type=marker,tag=board_player] at @s run function cc:board/retrieve_player
execute if score %board game matches 1 run gamemode spectator @a[tag=!out]
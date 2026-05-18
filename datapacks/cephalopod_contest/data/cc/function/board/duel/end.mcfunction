# player reset
kill @e[type=#cc:camera,tag=camera]
gamemode spectator @a[tag=!out]
execute in cc:void run tp @a[tag=!out] -450 10 -1150
clear @a[tag=!out]
effect clear @a[tag=!out]
scoreboard players set %in game 2
scoreboard players set %map game 0
scoreboard players set %mode game 0
scoreboard players set %duel game 0
stopsound @a
tag @a remove ded
tag @a remove button
schedule clear cc:red_sound
schedule clear cc:red_light

execute as @e[type=item_display,tag=board_player] at @s run function cc:board/retrieve_player

# give winner money
tellraw @a ["",{selector:"@a[tag=winner]"}," won duel"]
tellraw @a ["",{selector:"@a[tag=duel,tag=!winner]"}," lost duel"]
tag @a remove winner
tag @a remove duel

schedule function cc:board/end_turn 2s
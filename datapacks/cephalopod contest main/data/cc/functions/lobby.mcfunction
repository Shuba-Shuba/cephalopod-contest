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
#scoreboard objectives setdisplay sidebar
scoreboard objectives setdisplay sidebar event_money
execute as @a[scores={event_money=1..}] run function cc:get_event_money
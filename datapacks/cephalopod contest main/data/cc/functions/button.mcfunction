execute if score @s button matches 1 run setblock 173 89 110 air
execute if score @s button matches 2 run setblock 173 89 108 air
execute if score @s button matches 3 run setblock 173 89 106 air
execute if score @s button matches 4 run setblock 173 89 104 air
execute if score @s button matches 5 run setblock 173 89 102 air
scoreboard players add %presses button 1
scoreboard players remove %choices button 1
execute unless score @s button = %bad button run function cc:good_button
execute if score @s button = %bad button at @s run function cc:bad_button
scoreboard players set @s button 0
# choose map
execute store result score %map game run random value 0..2
execute if score %map game matches 0 run tp @a[tag=!out] -215 118 1034
execute if score %map game matches 1 run tp @a[tag=!out] -215 118 1152
execute if score %map game matches 2 run tp @a[tag=!out] -215 118 1270

# start round
gamemode spectator @a[tag=!out]
scoreboard players set %camera game 10
scoreboard objectives setdisplay sidebar
#tellraw @a "\nSumo:\n2 people will 1v1 in a sumo match. The winner will be safe, and the loser will have to go against someone who hasn't gone yet. The round continues until only 1 person hasn't won yet, and that person loses.\n"
schedule function cc:mode/sumo 9s

# sumo stuff
tag @r[tag=!out,tag=!ded,tag=!sumo] add sumo
tag @r[tag=!out,tag=!ded,tag=!sumo] add sumo
tag @r[tag=!out,tag=!ded,tag=!sumo] add on_deck
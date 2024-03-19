# choose map
scoreboard players set %map game 0

# start round
gamemode spectator @a[tag=!out]
scoreboard players set %camera game 17
tp @a[tag=!out] -241 114 959
scoreboard objectives setdisplay sidebar game
#tellraw @a "\nSpleef:\n2 people will 1v1 in a spleef match. The winner will be safe, and the loser will have to go against someone who hasn't gone yet. The round continues until only 1 person hasn't won yet, and that person loses.\n"
schedule function cc:mode/spleef 9s

# sumo stuff
tag @r[tag=!out,tag=!ded,tag=!sumo] add sumo
tag @r[tag=!out,tag=!ded,tag=!sumo] add sumo
tag @r[tag=!out,tag=!ded,tag=!sumo] add on_deck
# choose map
execute store result score %map game run random value 0..1

# start round
gamemode spectator @a[tag=!out]
scoreboard players set %camera game 15
execute if score %map game matches 0 run tp @a[tag=!out] 1020 75 264
execute if score %map game matches 1 run tp @a[tag=!out] 709 60 196
scoreboard objectives setdisplay sidebar
#tellraw @a "\nSkyWars Duels:\n2 people will 1v1 in a skywars match. The winner will be safe, and the loser will have to go against someone who hasn't gone yet. The round continues until only 1 person hasn't won yet, and that person loses.\n"
schedule function cc:mode/skywars 9s

# skywars stuff
tag @r[tag=!out,tag=!ded,tag=!skywars] add skywars
tag @r[tag=!out,tag=!ded,tag=!skywars] add skywars
tag @r[tag=!out,tag=!ded,tag=!skywars] add on_deck
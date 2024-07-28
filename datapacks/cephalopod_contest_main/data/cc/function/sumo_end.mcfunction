# no sticks
clear @a[tag=!out] stick

# winner
tag @a[tag=sumo] add winner
tellraw @a [{"selector":"@a[tag=sumo]"}," is safe."]
execute if score %map game matches 0 run tp @a[tag=sumo] -215 119 1055 180 0
execute if score %map game matches 1 run tp @a[tag=sumo] -215 119 1131 180 0
execute if score %map game matches 2 run tp @a[tag=sumo] -215 119 1291 180 0
tag @a[tag=winner] remove sumo

# next up
tag @a[tag=on_deck] add sumo
tag @a[tag=loser] add sumo
tag @a remove on_deck
tag @a remove loser

# next 1v1 or end
tag @r[tag=!sumo,tag=!winner,tag=!ded,tag=!out] add on_deck
execute store result score %players game if entity @a[tag=sumo]
scoreboard players operation %replay_players game = %players game
function rep:play
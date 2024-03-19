# no strength
effect clear @a strength
clear @a[tag=!out]

# winner
tag @a[tag=skywars] add winner
tellraw @a [{"selector":"@a[tag=skywars]"}," is safe."]
execute if score %map game matches 0 run tp @a[tag=skywars] 977 71.5 264 -90 0
tag @a remove skywars

# next up
tag @a[tag=on_deck] add skywars
tag @a[tag=loser] add skywars
tag @a remove on_deck
tag @a remove loser

# next 1v1 or end
kill @e[type=blaze]
tag @r[tag=!skywars,tag=!winner,tag=!ded,tag=!out,tag=!on_deck] add on_deck
execute store result score %players game if entity @a[tag=skywars]
scoreboard players operation %replay_players game = %players game
function rep:play
# mark entity as being tagged
effect clear @s water_breathing
effect give @s glowing infinite 0 true
tag @s add tnt_arc

# get UUID of tagger
scoreboard players operation @s tagUUID0 = @e[type=marker,tag=tnt_triangulator,predicate=!lobster:is_riding_arrow,limit=1,sort=nearest] ownerUUID0
scoreboard players operation @s tagUUID1 = @e[type=marker,tag=tnt_triangulator,predicate=!lobster:is_riding_arrow,limit=1,sort=nearest] ownerUUID1
scoreboard players operation @s tagUUID2 = @e[type=marker,tag=tnt_triangulator,predicate=!lobster:is_riding_arrow,limit=1,sort=nearest] ownerUUID2
scoreboard players operation @s tagUUID3 = @e[type=marker,tag=tnt_triangulator,predicate=!lobster:is_riding_arrow,limit=1,sort=nearest] ownerUUID3
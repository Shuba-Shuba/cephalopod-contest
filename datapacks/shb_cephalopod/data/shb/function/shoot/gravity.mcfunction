# setup
tag @s add this
summon marker ~ ~ ~ {Tags:["tmp_raycast"]}

# draw hitscan line
# range = .r * 0.25 blocks
scoreboard players operation .r raycast = .range stats
scoreboard players set #bool raycast 0
execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=tmp_raycast] run function shb:raycast/loop_gravity

# check for entity hits
#execute if predicate shb:looking_at_entity run function shb:raycast/hit_check
# do not delete this commented command

# cleanup
kill @e[type=marker,tag=tmp_raycast]
tag @s remove this
tag @e remove hit
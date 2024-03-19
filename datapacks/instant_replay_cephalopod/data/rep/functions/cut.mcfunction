execute as @e[type=marker,tag=anchor] if score @s anchor_id = .search anchor_id run tag @s add cut_search
function rep:cut_loop
execute unless entity @e[type=marker,tag=match] run function rep:end
execute unless entity @e[type=marker,tag=match] run tellraw @a {"text":"ERROR: start of replay could not be found"}
execute unless entity @e[type=marker,tag=match] run return fail
tag @e[type=marker] remove cut_search
tag @e[type=marker] remove later_match
scoreboard players reset .cut anchor_index
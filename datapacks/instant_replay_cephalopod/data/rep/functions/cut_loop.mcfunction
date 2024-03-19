scoreboard players add .cut anchor_index 1
execute as @e[type=marker,tag=cut_search] if score @s anchor_index = .cut anchor_index run tag @s add match
execute as @e[type=marker,tag=cut_search] if score @s anchor_index > .cut anchor_index run tag @s add later_match
execute unless entity @e[type=marker,tag=match] if entity @e[type=marker,tag=later_match] run function rep:cut_loop
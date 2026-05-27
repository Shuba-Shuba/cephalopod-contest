execute unless data entity @s data run return run kill @s

scoreboard players operation .search anchor_id = @s anchor_id
execute as @e[type=marker,tag=oldest_state] if score @s anchor_id = .search anchor_id run tag @s add match
execute if entity @s[tag=equipment_update] run data modify entity @n[type=marker,tag=match] data.equipment set from entity @s data.equipment
tag @e[type=marker] remove match
kill @s
tag @s add this
scoreboard players operation .search anchor_index = @s anchor_index
scoreboard players operation .search anchor_id = @s anchor_id
execute as @e[type=marker,tag=anchor] if score @s anchor_index = .search anchor_index if score @s anchor_id = .search anchor_id run tag @s add anchor_current
tp @s @n[type=marker,tag=anchor_current]
execute if entity @n[type=marker,tag=anchor_current,tag=melee] at @s run function rep:anim/melee
execute if entity @n[type=marker,tag=anchor_current,tag=hurt] run damage @s 0 minecraft:out_of_world
execute if entity @n[type=marker,tag=anchor_current,tag=equipment_update] run data modify entity @s equipment set from entity @n[type=marker,tag=anchor_current] data.equipment
scoreboard players add @s anchor_index 1
scoreboard players operation .search anchor_id = @s anchor_id
execute as @a[scores={anchor_index=1..}] if score @s anchor_id = .search anchor_id if score @e[type=mannequin,tag=this,limit=1] anchor_index > @s anchor_index run function rep:end
tag @s remove this
tag @e[type=marker] remove anchor_current

title @a actionbar "INSTANT REPLAY - Sponsored by Kellogg's"
tag @s add this
scoreboard players operation .search anchor_index = @s anchor_index
scoreboard players operation .search anchor_id = @s anchor_id
execute as @e[type=marker,tag=anchor] if score @s anchor_index = .search anchor_index if score @s anchor_id = .search anchor_id run tp @e[type=armor_stand,tag=this,limit=1] @s
execute as @e[type=marker,tag=anchor] if score @s anchor_index = .search anchor_index if score @s anchor_id = .search anchor_id if data entity @s {data:{hit:1b}} at @s run function rep:anim/hit_start
scoreboard players add @e[type=armor_stand,tag=this,limit=1] anchor_index 1
scoreboard players operation .search anchor_id = @s anchor_id
execute as @a[scores={anchor_index=1..}] if score @s anchor_id = .search anchor_id if score @e[type=armor_stand,tag=this,limit=1] anchor_index > @s anchor_index run function rep:end
tag @s remove this

title @a actionbar "INSTANT REPLAY - Sponsored by Kellogg's"
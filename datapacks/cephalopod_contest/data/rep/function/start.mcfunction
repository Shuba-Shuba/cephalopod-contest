summon marker ~ ~ ~ {Tags:["return_pos","init"]}
execute store result score @e[type=marker,tag=return_pos,tag=init,limit=1] ownerUUID0 run data get entity @s UUID[0]
execute store result score @e[type=marker,tag=return_pos,tag=init,limit=1] ownerUUID1 run data get entity @s UUID[1]
execute store result score @e[type=marker,tag=return_pos,tag=init,limit=1] ownerUUID2 run data get entity @s UUID[2]
execute store result score @e[type=marker,tag=return_pos,tag=init,limit=1] ownerUUID3 run data get entity @s UUID[3]
data modify entity @e[type=marker,tag=return_pos,tag=init,limit=1] Rotation set from entity @s Rotation
tag @e[type=marker] remove init

scoreboard players operation .search anchor_id = @s anchor_id

execute as @e[type=marker,tag=anchor,scores={anchor_index=1}] if score @s anchor_id = .search anchor_id run tag @s add match
execute as @e[type=marker,tag=oldest_state] if score @s anchor_id = .search anchor_id run tag @s add match
execute unless entity @e[type=marker,tag=anchor,tag=match] run function rep:cut
execute store success score %replay_match game if entity @e[type=marker,tag=anchor,tag=match]
execute unless entity @e[type=marker,tag=anchor,tag=match] run return fail
execute positioned as @n[type=marker,tag=anchor,tag=match] run summon mannequin ~ ~ ~ {Tags:["init","replay"],immovable:true}
tp @n[type=mannequin,tag=init] @n[type=marker,tag=anchor,tag=match]
data modify entity @n[type=mannequin,tag=init] profile.id set from entity @s UUID
data modify entity @n[type=mannequin,tag=init] equipment set from entity @n[type=marker,tag=oldest_state,tag=match] data.equipment
scoreboard players operation @n[type=mannequin,tag=init] anchor_index = @e[type=marker,tag=anchor,tag=match] anchor_index
scoreboard players add @n[type=mannequin,tag=init] anchor_index 1
scoreboard players operation @n[type=mannequin,tag=init] anchor_id = @s anchor_id
tag @e[type=marker] remove match

gamemode spectator @s
spectate @n[type=mannequin,tag=init]

tag @e[type=mannequin] remove init
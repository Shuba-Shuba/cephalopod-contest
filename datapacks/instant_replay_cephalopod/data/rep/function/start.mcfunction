summon marker ~ ~ ~ {Tags:["return_pos","init"]}
execute store result score @e[type=marker,tag=return_pos,tag=init,limit=1] ownerUUID0 run data get entity @s UUID[0]
execute store result score @e[type=marker,tag=return_pos,tag=init,limit=1] ownerUUID1 run data get entity @s UUID[1]
execute store result score @e[type=marker,tag=return_pos,tag=init,limit=1] ownerUUID2 run data get entity @s UUID[2]
execute store result score @e[type=marker,tag=return_pos,tag=init,limit=1] ownerUUID3 run data get entity @s UUID[3]
data modify entity @e[type=marker,tag=return_pos,tag=init,limit=1] Rotation set from entity @s Rotation
tag @e[type=marker] remove init

scoreboard players operation .search anchor_id = @s anchor_id

execute as @e[type=marker,tag=anchor,scores={anchor_index=1}] if score @s anchor_id = .search anchor_id run tag @s add match
execute unless entity @e[type=marker,tag=anchor,tag=match] run function rep:cut
execute store success score %replay_match game if entity @e[type=marker,tag=match]
execute unless entity @e[type=marker,tag=anchor,tag=match] run return fail
execute positioned as @e[type=marker,tag=match,limit=1] run summon mannequin ~ ~ ~ {Tags:["init","replay"],immovable:true}
tp @n[type=mannequin,tag=init] @e[type=marker,tag=match,limit=1]
data modify entity @n[type=mannequin,tag=init] profile.id set from entity @s UUID
item replace entity @n[type=mannequin,tag=init] armor.head from entity @s armor.head
item replace entity @n[type=mannequin,tag=init] armor.chest from entity @s armor.chest
item replace entity @n[type=mannequin,tag=init] armor.legs from entity @s armor.legs
item replace entity @n[type=mannequin,tag=init] armor.feet from entity @s armor.feet
item replace entity @n[type=mannequin,tag=init] weapon.mainhand from entity @s weapon.mainhand
item replace entity @n[type=mannequin,tag=init] weapon.offhand from entity @s weapon.offhand
scoreboard players operation @n[type=mannequin,tag=init] anchor_index = @e[type=marker,tag=anchor,tag=match] anchor_index
scoreboard players add @n[type=mannequin,tag=init] anchor_index 1
scoreboard players operation @n[type=mannequin,tag=init] anchor_id = @s anchor_id
tag @e[type=marker] remove match

gamemode spectator @s
spectate @n[type=mannequin,tag=init]

tag @e[type=mannequin] remove init
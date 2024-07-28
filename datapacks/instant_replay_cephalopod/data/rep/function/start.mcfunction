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
execute positioned as @e[type=marker,tag=match,limit=1] run summon armor_stand ~ ~ ~ {Tags:["init","replay"],ShowArms:1b,ArmorItems:[{},{},{},{id:"minecraft:player_head",count:1b}],NoBasePlate:1b,Marker:0b,NoGravity:1b}
tp @e[type=armor_stand,tag=init] @e[type=marker,tag=match,limit=1]
item modify entity @e[type=armor_stand,tag=init] armor.head rep:give_head
item replace entity @e[type=armor_stand,tag=init] armor.chest from entity @s armor.chest
item replace entity @e[type=armor_stand,tag=init] armor.legs from entity @s armor.legs
item replace entity @e[type=armor_stand,tag=init] armor.feet from entity @s armor.feet
item replace entity @e[type=armor_stand,tag=init] weapon.mainhand from entity @s weapon.mainhand
item replace entity @e[type=armor_stand,tag=init] weapon.offhand from entity @s weapon.offhand
scoreboard players operation @e[type=armor_stand,tag=init] anchor_index = @e[type=marker,tag=anchor,tag=match] anchor_index
scoreboard players add @e[type=armor_stand,tag=init] anchor_index 1
scoreboard players operation @e[type=armor_stand,tag=init] anchor_id = @s anchor_id
tag @e[type=marker] remove match

gamemode spectator @s
spectate @e[type=armor_stand,limit=1,tag=init]

tag @e[type=armor_stand] remove init
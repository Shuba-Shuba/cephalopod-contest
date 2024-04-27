tag @s add init
summon wolf ~ ~ ~ {Tags:["init"],CustomNameVisible:1b,CustomName:'"null"',Attributes:[{Name:"generic.movement_speed",Base:0.5d}]}
#data modify entity @e[type=wolf,limit=1,tag=init] Owner set from entity @s UUID
execute store result score @e[type=wolf,limit=1,tag=init] ownerUUID0 run data get entity @s UUID[0]
execute store result score @e[type=wolf,limit=1,tag=init] ownerUUID1 run data get entity @s UUID[1]
execute store result score @e[type=wolf,limit=1,tag=init] ownerUUID2 run data get entity @s UUID[2]
execute store result score @e[type=wolf,limit=1,tag=init] ownerUUID3 run data get entity @s UUID[3]
data modify block 0 -63 0 front_text.messages[0] set value '{"selector":"@p[tag=init]"}'
data modify entity @e[type=wolf,limit=1,tag=init] CustomName set from block 0 -63 0 front_text.messages[0]
tag @e[type=wolf] remove init
tag @s remove init
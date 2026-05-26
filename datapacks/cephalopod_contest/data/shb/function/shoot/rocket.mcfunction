execute anchored eyes run summon snowball ^ ^ ^ {Tags:["launch"],Item:{id:"minecraft:tnt",count:1,components:{"minecraft:custom_data":{shb:1b}}}}
execute as @n[type=snowball,tag=launch] run function shb:launch {vel:1.5}
execute store result score @n[type=snowball,tag=launch] ownerUUID0 run data get entity @s UUID[0]
execute store result score @n[type=snowball,tag=launch] ownerUUID1 run data get entity @s UUID[1]
execute store result score @n[type=snowball,tag=launch] ownerUUID2 run data get entity @s UUID[2]
execute store result score @n[type=snowball,tag=launch] ownerUUID3 run data get entity @s UUID[3]
tag @n[type=snowball,tag=launch] remove launch
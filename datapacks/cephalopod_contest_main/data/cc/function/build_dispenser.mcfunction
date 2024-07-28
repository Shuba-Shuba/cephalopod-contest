scoreboard players set @s build_dispenser 0
item replace entity @s hotbar.3 with minecraft:rib_armor_trim_smithing_template[custom_name='{"text":"Explode Dispenser","italic":false}',custom_data={tnt:6b}]

scoreboard players operation @e[type=skeleton,limit=1,sort=nearest,tag=dispenser,tag=build] ownerUUID0 = @s UUID0
scoreboard players operation @e[type=skeleton,limit=1,sort=nearest,tag=dispenser,tag=build] ownerUUID1 = @s UUID1
scoreboard players operation @e[type=skeleton,limit=1,sort=nearest,tag=dispenser,tag=build] ownerUUID2 = @s UUID2
scoreboard players operation @e[type=skeleton,limit=1,sort=nearest,tag=dispenser,tag=build] ownerUUID3 = @s UUID3

tag @e[type=skeleton,tag=dispenser] remove build
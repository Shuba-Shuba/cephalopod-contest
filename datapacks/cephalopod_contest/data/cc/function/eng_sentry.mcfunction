execute anchored eyes run summon skeleton ^ ^ ^ {Team:"no_pvp",Tags:["tnt_sentry","build"],Invulnerable:1b,CustomName:{text:"Sentry"},equipment:{head:{id:"minecraft:dispenser",count:1}},DeathLootTable:"",drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,body:0f,feet:0f}}
execute as @n[type=skeleton,tag=build] run function shb:launch {vel:1.5}
scoreboard players set @n[type=skeleton,tag=build] gardener_jump 10
scoreboard players operation @n[type=skeleton,tag=build] ownerUUID0 = @s UUID0
scoreboard players operation @n[type=skeleton,tag=build] ownerUUID1 = @s UUID1
scoreboard players operation @n[type=skeleton,tag=build] ownerUUID2 = @s UUID2
scoreboard players operation @n[type=skeleton,tag=build] ownerUUID3 = @s UUID3
scoreboard players set @n[type=skeleton,tag=build] shoot_sentry_cd 10
tag @e[type=skeleton,tag=build] remove build
clear @s iron_ingot 12
item replace entity @s hotbar.2 with minecraft:rib_armor_trim_smithing_template[item_name="Explode Sentry",custom_data={tnt:10b}]
playsound minecraft:entity.snowball.throw master @a[distance=..80] ~ ~ ~ 1 0
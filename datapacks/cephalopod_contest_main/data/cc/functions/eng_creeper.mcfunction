execute anchored eyes run summon creeper ^ ^ ^ {Team:"no_pvp",Tags:["tnt_eng","build"],Invulnerable:1b,DeathLootTable:"",Attributes:[{Name:"generic.follow_range",Base:0},{Name:"generic.movement_speed",Base:0}],powered:1b,Fuse:32767s}
execute as @e[type=creeper,limit=1,sort=nearest,tag=build] run function shb:launch {"vel":"2"}
scoreboard players set @e[type=creeper,limit=1,sort=nearest,tag=build] gardener_jump 10
scoreboard players operation @e[type=creeper,limit=1,sort=nearest,tag=build] ownerUUID0 = @s UUID0
scoreboard players operation @e[type=creeper,limit=1,sort=nearest,tag=build] ownerUUID1 = @s UUID1
scoreboard players operation @e[type=creeper,limit=1,sort=nearest,tag=build] ownerUUID2 = @s UUID2
scoreboard players operation @e[type=creeper,limit=1,sort=nearest,tag=build] ownerUUID3 = @s UUID3
tag @e[type=creeper,tag=build] remove build
clear @s iron_ingot 12
item replace entity @s hotbar.3 with minecraft:rib_armor_trim_smithing_template[custom_name='{"text":"Explode Creeper","italic":false}',custom_data={tnt:12b}]
playsound minecraft:entity.snowball.throw master @a[distance=..80] ~ ~ ~ 1 0
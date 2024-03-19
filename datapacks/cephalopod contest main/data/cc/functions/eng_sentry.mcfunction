execute anchored eyes run summon skeleton ^ ^ ^ {Team:"no_pvp",Tags:["tnt_sentry","build"],Invulnerable:1b,CustomName:'{"text":"Sentry"}',ArmorItems:[{},{},{},{id:"minecraft:dispenser",Count:1b}],HandItems:[{},{}],DeathLootTable:"",ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f]}
execute as @e[type=skeleton,limit=1,sort=nearest,tag=build] run function shb:launch {"vel":"1.5"}
#execute positioned 0.0 0.0 0.0 rotated as @s run summon marker ^ ^ ^1.5 {UUID:[I;0,0,0,0]}
#data modify entity @e[type=skeleton,limit=1,sort=nearest,tag=build] Motion set from entity 0-0-0-0-0 Pos
#kill 0-0-0-0-0
scoreboard players set @e[type=skeleton,limit=1,sort=nearest,tag=build] gardener_jump 10
scoreboard players operation @e[type=skeleton,limit=1,sort=nearest,tag=build] ownerUUID0 = @s UUID0
scoreboard players operation @e[type=skeleton,limit=1,sort=nearest,tag=build] ownerUUID1 = @s UUID1
scoreboard players operation @e[type=skeleton,limit=1,sort=nearest,tag=build] ownerUUID2 = @s UUID2
scoreboard players operation @e[type=skeleton,limit=1,sort=nearest,tag=build] ownerUUID3 = @s UUID3
scoreboard players set @e[type=skeleton,limit=1,sort=nearest,tag=build] shoot_sentry_cd 10
tag @e[type=skeleton,tag=build] remove build
clear @s iron_ingot 12
item replace entity @s hotbar.2 with rib_armor_trim_smithing_template{tnt:10b,display:{Name:'{"text":"Explode Sentry","italic":false}'}}
playsound minecraft:entity.snowball.throw master @a[distance=..80] ~ ~ ~ 1 0
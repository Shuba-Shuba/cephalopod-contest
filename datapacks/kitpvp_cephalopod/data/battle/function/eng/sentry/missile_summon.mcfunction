execute anchored eyes run summon minecraft:armor_stand ~ ~1 ~ {Tags:["missile"],NoGravity:1b,Invisible:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:tnt",count:1}]}
playsound minecraft:entity.zombie.attack_wooden_door master @a[distance=..16] ~ ~ ~ 1 0
scoreboard players operation @e[type=armor_stand,tag=missile,limit=1,sort=nearest] builderUUID0 = @e[tag=sentry,limit=1,sort=nearest] builderUUID0
scoreboard players operation @e[type=armor_stand,tag=missile,limit=1,sort=nearest] builderUUID1 = @e[tag=sentry,limit=1,sort=nearest] builderUUID1
scoreboard players operation @e[type=armor_stand,tag=missile,limit=1,sort=nearest] builderUUID2 = @e[tag=sentry,limit=1,sort=nearest] builderUUID2
scoreboard players operation @e[type=armor_stand,tag=missile,limit=1,sort=nearest] builderUUID3 = @e[tag=sentry,limit=1,sort=nearest] builderUUID3
scoreboard players operation @e[type=armor_stand,tag=missile,limit=1,sort=nearest] ownerUUID0 = @e[tag=sentry,limit=1,sort=nearest] builderUUID0
scoreboard players operation @e[type=armor_stand,tag=missile,limit=1,sort=nearest] ownerUUID1 = @e[tag=sentry,limit=1,sort=nearest] builderUUID1
scoreboard players operation @e[type=armor_stand,tag=missile,limit=1,sort=nearest] ownerUUID2 = @e[tag=sentry,limit=1,sort=nearest] builderUUID2
scoreboard players operation @e[type=armor_stand,tag=missile,limit=1,sort=nearest] ownerUUID3 = @e[tag=sentry,limit=1,sort=nearest] builderUUID3
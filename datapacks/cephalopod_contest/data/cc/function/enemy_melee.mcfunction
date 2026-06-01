summon zombie ~ ~ ~ {DeathLootTable:"cc:heist_mob",Team:"blue",PersistenceRequired:1b,CanBreakDoors:0b,Tags:["heist","heist_melee","this"],drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,body:0f,feet:0f},equipment:{head:{id:"minecraft:netherite_helmet",count:1,components:{"minecraft:unbreakable":{}}},mainhand:{id:"minecraft:iron_sword",count:1,components:{"minecraft:unbreakable":{}}}},Health:8.0f}
execute if entity @s[tag=heist_skyscraper] run tag @e[tag=this,limit=1,sort=nearest] add heist_skyscraper
execute if entity @s[tag=heist_hotel] run tag @e[tag=this,limit=1,sort=nearest] add heist_hotel
execute if entity @s[tag=heist_bank] run tag @e[tag=this,limit=1,sort=nearest] add heist_bank
tag @e[tag=this] remove this
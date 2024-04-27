summon zombie ~ ~ ~ {DeathLootTable:"cc:heist_mob",Team:"blue",PersistenceRequired:1b,CanBreakDoors:0b,Tags:["heist","heist_melee","this"],HandItems:[{id:"minecraft:iron_sword",count:1,components:{"minecraft:unbreakable":{}}},{}],HandDropChances:[0.0f,0.0f],ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",count:1,components:{"minecraft:unbreakable":{}}}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Health:8.0f}
execute if entity @s[tag=heist_skyscraper] run tag @e[tag=this,limit=1,sort=nearest] add heist_skyscraper
execute if entity @s[tag=heist_hotel] run tag @e[tag=this,limit=1,sort=nearest] add heist_hotel
execute if entity @s[tag=heist_bank] run tag @e[tag=this,limit=1,sort=nearest] add heist_bank
tag @e[tag=this] remove this
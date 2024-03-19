summon skeleton ~ ~ ~ {DeathLootTable:"lobster:heist_mob",Team:"blue",PersistenceRequired:1b,Tags:["heist","heist_ranged","this"],HandItems:[{id:"minecraft:bow",Count:1b,tag:{CustomModelData:201}},{}],HandDropChances:[0.000F,0.000F],ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b}}],ArmorDropChances:[0.000F,0.000F,0.000F,0.000F],Health:8.0f}
execute if entity @s[tag=heist_skyscraper] run tag @e[tag=this,limit=1,sort=nearest] add heist_skyscraper
execute if entity @s[tag=heist_hotel] run tag @e[tag=this,limit=1,sort=nearest] add heist_hotel
execute if entity @s[tag=heist_bank] run tag @e[tag=this,limit=1,sort=nearest] add heist_bank
tag @e[tag=this] remove this
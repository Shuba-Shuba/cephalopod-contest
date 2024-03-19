summon spider ~ ~ ~ {DeathLootTable:"lobster:heist_mob",Team:"blue",PersistenceRequired:1b,Tags:["heist","heist_dog","this"],Health:8.0f}
execute if entity @s[tag=heist_skyscraper] run tag @e[tag=this,limit=1,sort=nearest] add heist_skyscraper
execute if entity @s[tag=heist_hotel] run tag @e[tag=this,limit=1,sort=nearest] add heist_hotel
execute if entity @s[tag=heist_bank] run tag @e[tag=this,limit=1,sort=nearest] add heist_bank
tag @e[tag=this] remove this
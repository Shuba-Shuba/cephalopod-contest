summon skeleton ~ ~ ~ {DeathLootTable:"",CustomName:'{"text":"null"}',ArmorItems:[{},{},{},{id:"minecraft:netherite_helmet",Count:1b,tag:{Unbreakable:1b}}],HandItems:[{},{}],Tags:["sentry"],Attributes:[{Base:40d,Name:"generic.max_health"}],Health:40f,NoAI:1b,PersistenceRequired:1b}
tag @s add me
data modify block 0 -63 0 front_text.messages[0] set value '["",{"selector":"@p[tag=me]"},"\'s Tainted Sentry"]'
data modify entity @e[type=skeleton,tag=sentry,limit=1,sort=nearest] CustomName set from block 0 -63 0 front_text.messages[0]
tag @s remove me
execute as @e[type=skeleton,tag=sentry,limit=1,sort=nearest] run function shb:give/sentry_lean
scoreboard players operation @e[type=skeleton,tag=sentry,limit=1,sort=nearest] builderUUID0 = @s UUID0
scoreboard players operation @e[type=skeleton,tag=sentry,limit=1,sort=nearest] builderUUID1 = @s UUID1
scoreboard players operation @e[type=skeleton,tag=sentry,limit=1,sort=nearest] builderUUID2 = @s UUID2
scoreboard players operation @e[type=skeleton,tag=sentry,limit=1,sort=nearest] builderUUID3 = @s UUID3
scoreboard players set @e[type=skeleton,tag=sentry,limit=1,sort=nearest] sentry_level 3
scoreboard players set @e[type=skeleton,tag=sentry,limit=1,sort=nearest] sentry_age 1100
scoreboard players set @s build_cd 200
execute if entity @s[team=red] run team join red @e[type=skeleton,tag=sentry,limit=1,sort=nearest]
execute if entity @s[team=blue] run team join blue @e[type=skeleton,tag=sentry,limit=1,sort=nearest]
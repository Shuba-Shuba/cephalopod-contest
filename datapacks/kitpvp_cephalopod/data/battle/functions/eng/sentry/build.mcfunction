clear @s iron_ingot 20
summon skeleton ~ ~ ~ {DeathLootTable:"",CustomName:'{"text":"null"}',ArmorItems:[{},{},{},{id:"minecraft:golden_helmet",count:1,components:{"minecraft:unbreakable":{}}}],HandItems:[{},{}],Tags:["sentry"],Attributes:[{Base:40.0d,Name:"generic.max_health"}],Health:40.0f,NoAI:1b,PersistenceRequired:1b}
tag @s add me
data modify block 0 -63 0 front_text.messages[0] set value '["",{"selector":"@p[tag=me]"},"\'s Sentry"]'
data modify entity @e[type=skeleton,tag=sentry,limit=1,sort=nearest] CustomName set from block 0 -63 0 front_text.messages[0]
tag @s remove me
execute as @e[type=skeleton,tag=sentry,limit=1,sort=nearest] run function shb:give/sentry
scoreboard players operation @e[type=skeleton,tag=sentry,limit=1,sort=nearest] builderUUID0 = @s UUID0
scoreboard players operation @e[type=skeleton,tag=sentry,limit=1,sort=nearest] builderUUID1 = @s UUID1
scoreboard players operation @e[type=skeleton,tag=sentry,limit=1,sort=nearest] builderUUID2 = @s UUID2
scoreboard players operation @e[type=skeleton,tag=sentry,limit=1,sort=nearest] builderUUID3 = @s UUID3
scoreboard players set @e[type=skeleton,tag=sentry,limit=1,sort=nearest] sentry_level 1
execute if entity @s[team=red] run team join red @e[type=skeleton,tag=sentry,limit=1,sort=nearest]
execute if entity @s[team=blue] run team join blue @e[type=skeleton,tag=sentry,limit=1,sort=nearest]
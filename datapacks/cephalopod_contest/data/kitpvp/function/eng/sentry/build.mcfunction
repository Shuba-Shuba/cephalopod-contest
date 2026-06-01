clear @s iron_ingot 20
summon skeleton ~ ~ ~ {DeathLootTable:"",CustomName:"null",equipment:{head:{id:"minecraft:golden_helmet",count:1,components:{"minecraft:unbreakable":{}}}},Tags:["sentry"],attributes:[{base:40.0d,id:"max_health"}],Health:40.0f,NoAI:1b,PersistenceRequired:1b}
tag @s add me
data modify block 0 -63 0 front_text.messages[0] set value ["",{selector:"@p[tag=me]"},"'s Sentry"]
data modify entity @n[type=skeleton,tag=sentry] CustomName set from block 0 -63 0 front_text.messages[0]
tag @s remove me
execute as @n[type=skeleton,tag=sentry] run function shb:give/sentry
scoreboard players operation @n[type=skeleton,tag=sentry] builderUUID0 = @s UUID0
scoreboard players operation @n[type=skeleton,tag=sentry] builderUUID1 = @s UUID1
scoreboard players operation @n[type=skeleton,tag=sentry] builderUUID2 = @s UUID2
scoreboard players operation @n[type=skeleton,tag=sentry] builderUUID3 = @s UUID3
scoreboard players set @n[type=skeleton,tag=sentry] sentry_level 1
execute if entity @s[team=red] run team join red @n[type=skeleton,tag=sentry]
execute if entity @s[team=blue] run team join blue @n[type=skeleton,tag=sentry]
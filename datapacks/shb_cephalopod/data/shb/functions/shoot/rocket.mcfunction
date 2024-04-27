execute anchored eyes run summon snowball ^ ^ ^ {Tags:["launch"],Item:{id:"minecraft:tnt",count:1,components:{"minecraft:custom_data":{shb:1b}}}}
execute as @e[type=snowball,limit=1,tag=launch] run function shb:launch {"vel":"1.5"}
scoreboard players operation @e[type=snowball,limit=1,tag=launch] ownerUUID0 = @s UUID0
scoreboard players operation @e[type=snowball,limit=1,tag=launch] ownerUUID1 = @s UUID1
scoreboard players operation @e[type=snowball,limit=1,tag=launch] ownerUUID2 = @s UUID2
scoreboard players operation @e[type=snowball,limit=1,tag=launch] ownerUUID3 = @s UUID3
tag @e[type=snowball,limit=1,tag=launch] remove launch
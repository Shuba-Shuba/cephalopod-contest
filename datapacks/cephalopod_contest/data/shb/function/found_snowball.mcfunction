summon snowball ~ ~ ~ {Item:{id:"minecraft:tnt",count:1},Tags:["shb","init"],Passengers:[{id:"minecraft:marker",Tags:["shb","init"]}]}
scoreboard players operation @e[type=marker,tag=shb,tag=init,limit=1] ownerUUID0 = @s ownerUUID0
scoreboard players operation @e[type=marker,tag=shb,tag=init,limit=1] ownerUUID1 = @s ownerUUID1
scoreboard players operation @e[type=marker,tag=shb,tag=init,limit=1] ownerUUID2 = @s ownerUUID2
scoreboard players operation @e[type=marker,tag=shb,tag=init,limit=1] ownerUUID3 = @s ownerUUID3
data modify entity @e[type=snowball,tag=shb,tag=init,limit=1] Motion set from entity @s Motion
tag @e[tag=shb,tag=init] remove init

kill @s
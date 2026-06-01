summon arrow ~ ~ ~ {Tags:["brick","init"],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:brick"},Tags:["brick"]}],damage:3.5d}
data modify entity @e[type=arrow,tag=brick,tag=init,limit=1] Owner set from entity @s Owner
data modify entity @e[type=arrow,tag=brick,tag=init,limit=1] Motion set from entity @s Motion
tag @e[type=arrow,tag=brick,tag=init,limit=1] remove init

kill @s
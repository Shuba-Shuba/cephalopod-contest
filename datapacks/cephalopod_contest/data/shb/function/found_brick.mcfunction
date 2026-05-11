summon arrow ~ ~ ~ {Tags:["brick","init"],Passengers:[{id:"minecraft:snowball",Item:{id:"minecraft:brick",count:1b},Tags:["brick"]}],power:[0.0d,0.0d,0.0d],damage:3.5d}
data modify entity @e[type=arrow,tag=brick,tag=init,limit=1] Owner set from entity @s Owner
data modify entity @e[type=arrow,tag=brick,tag=init,limit=1] Motion set from entity @s Motion
#data merge entity @e[type=arrow,tag=brick,tag=init,limit=1] {Item:{id:"minecraft:brick",count:1}}
tag @e[type=arrow,tag=brick,tag=init,limit=1] remove init

kill @s
summon arrow ~ ~ ~ {Tags:["dodge","init"],Passengers:[{id:"minecraft:marker",Tags:["dodge"]}],custom_potion_effects:[{id:"minecraft:water_breathing",amplifier:69b,duration:2}]}
data modify entity @e[type=arrow,tag=dodge,tag=init,limit=1] Owner set from entity @s Owner
data modify entity @e[type=arrow,tag=dodge,tag=init,limit=1] Motion set from entity @s Motion
tag @e[type=arrow,tag=dodge,tag=init,limit=1] remove init

kill @s
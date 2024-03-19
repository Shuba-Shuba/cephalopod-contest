execute anchored eyes run summon arrow ^ ^ ^ {Tags:["save","init"],NoGravity:1b}
execute as @e[type=arrow,limit=1,tag=init] run function lobster:eng_arrow_init
data modify entity @e[type=arrow,limit=1,tag=init] Owner set from entity @s UUID
tag @e[type=arrow,limit=1,tag=init] remove init
clear @s iron_ingot 5
playsound minecraft:entity.arrow.shoot master @a[distance=..80] ~ ~ ~ 1 1.5
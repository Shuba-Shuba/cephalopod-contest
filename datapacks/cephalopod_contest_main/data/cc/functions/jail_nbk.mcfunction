# place player in new boat
summon chest_boat ~ ~ ~ {Tags:["jail_saver"],Invulnerable:1b}
ride @s mount @e[type=chest_boat,limit=1,sort=nearest,tag=jail_saver]
tag @e[type=chest_boat] remove jail_saver

# humiliate player
title @s title "YOU ARE FOOLISH"
title @s subtitle "DO NOT EXIT THE BOAT"
tellraw @a ["@everyone ",{"selector":"@s"}," is extremely STUPID and LEFT THE BOAT"]
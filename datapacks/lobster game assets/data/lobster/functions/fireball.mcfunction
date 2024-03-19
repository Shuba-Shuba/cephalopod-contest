execute positioned 0.0 0.0 0.0 run summon marker ^ ^ ^2 {UUID:[I;0,0,0,0],duration:1}
execute positioned ~ ~.1 ~ anchored eyes run summon fireball ^ ^ ^ {Tags:["launch","fireball"],ExplosionPower:1b,NoGravity:1b,Passengers:[{id:"minecraft:marker",Tags:["fireball"]}]}
data modify entity @e[type=fireball,limit=1,tag=launch] Motion set from entity 0-0-0-0-0 Pos
data modify entity @e[type=fireball,limit=1,tag=launch] Owner set from entity @s UUID
tag @e[type=fireball,limit=1,tag=launch] remove launch
kill 0-0-0-0-0
schedule function lobster:save_motion 3t
item replace entity @s weapon.mainhand with air
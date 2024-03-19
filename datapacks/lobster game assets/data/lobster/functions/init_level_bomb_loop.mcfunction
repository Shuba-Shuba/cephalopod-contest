# summon current bomb iteration
summon creeper ~ ~ ~ {ignited:1b,powered:1b,Tags:["bomb_level","init"],Fuse:40,NoAI:1b,Invulnerable:1b}
execute store result entity @e[type=creeper,limit=1,sort=nearest,tag=init] ExplosionRadius byte 1 run scoreboard players get %bomb_level game
execute if score %bomb_level game matches 1 run data modify entity @e[type=creeper,limit=1,sort=nearest,tag=init] CustomNameVisible set value 1b
execute if score %bomb_level game matches 1 run data modify entity @e[type=creeper,limit=1,sort=nearest,tag=init] CustomName set from entity @s CustomName
tag @e[type=creeper] remove init

# next iteration
scoreboard players remove %bomb_level game 1
execute if score %bomb_level game matches 1.. run function lobster:init_level_bomb_loop
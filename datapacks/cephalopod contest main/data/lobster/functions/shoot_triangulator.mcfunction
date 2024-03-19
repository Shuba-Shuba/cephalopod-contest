advancement revoke @s only lobster:shoot_triangulator
execute store result score #onground game run data get entity @s OnGround
execute as @e[type=arrow,distance=..10,limit=1,sort=nearest] at @s run function lobster:init_triangulator
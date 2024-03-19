advancement revoke @s only cc:shoot_triangulator
execute store result score #onground game run data get entity @s OnGround
execute as @e[type=arrow,distance=..10,limit=1,sort=nearest] at @s run function cc:init_triangulator
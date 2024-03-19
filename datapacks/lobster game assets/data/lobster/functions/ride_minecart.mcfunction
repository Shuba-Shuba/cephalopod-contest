scoreboard players set @s minecart_time 50
summon minecart ~ ~ ~ {Tags:["recovery"],Invulnerable:1b,NoGravity:1b}
data modify entity @e[type=minecart,tag=recovery,limit=1,sort=nearest] Rotation set from entity @s Rotation
ride @s mount @e[type=minecart,limit=1,sort=nearest,tag=recovery]
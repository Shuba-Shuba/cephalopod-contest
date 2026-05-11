item replace entity @s weapon.mainhand with air
scoreboard players set @s laser 21
scoreboard players set @s laser_cd 260
summon marker ~ ~ ~ {Tags:["laser_tether"]}
data modify entity @e[type=marker,limit=1,sort=nearest,tag=laser_tether] Rotation set from entity @s Rotation
scoreboard players set @s shoot_crossbow 0
item modify entity @s hotbar.0 cc:unload_crossbow
scoreboard players set @s crossbow_time 0
scoreboard players set @e[type=arrow,distance=..10,limit=1,sort=nearest,nbt=!{LeftOwner:1b}] tnt_arrow 1
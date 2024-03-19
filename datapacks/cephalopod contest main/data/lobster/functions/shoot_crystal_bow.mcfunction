scoreboard players set @s shoot_crossbow 0
item modify entity @s hotbar.0 lobster:unload_crossbow
scoreboard players set @s crossbow_time 0
#execute as @e[type=arrow,distance=..10] unless data entity @s {LeftOwner:1b} run data merge entity @s {custom_potion_effects:[{id:"minecraft:water_breathing",amplifier:35b,show_particles:0b,show_ambient:0b}]}
scoreboard players set @e[type=arrow,distance=..10,limit=1,sort=nearest,nbt=!{LeftOwner:1b}] tnt_arrow 1
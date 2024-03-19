data merge entity @s {custom_potion_effects:[{id:"minecraft:water_breathing",duration:2,amplifier:35b,show_particles:0b,show_ambient:0b}]}
tag @s add this
execute summon marker run ride @s mount @e[type=arrow,tag=this,limit=1,sort=nearest]
execute on passengers store result score @s ownerUUID0 run data get entity @e[type=arrow,tag=this,limit=1,sort=nearest] Owner[0]
execute on passengers store result score @s ownerUUID1 run data get entity @e[type=arrow,tag=this,limit=1,sort=nearest] Owner[1]
execute on passengers store result score @s ownerUUID2 run data get entity @e[type=arrow,tag=this,limit=1,sort=nearest] Owner[2]
execute on passengers store result score @s ownerUUID3 run data get entity @e[type=arrow,tag=this,limit=1,sort=nearest] Owner[3]
execute on passengers run tag @s add tnt_triangulator
tag @s remove this

# if on ground, remove owner tag immediately, otherwise wait until arrow leaves hitbox
# removing arrow's owner tag immediately allows hitting really close players
# waiting until the arrow leaves the owner's hitbox prevents premature self-hits
execute if score #onground game matches 0 run tag @s add init_triangulator
execute if score #onground game matches 1 run data modify entity @s Owner set value [I;0,0,0,0]
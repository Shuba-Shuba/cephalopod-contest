# spawn dagger
tag @a remove dagger_hit
execute positioned ^ ^ ^2 run function lobster:dagger_cast
execute positioned ^1 ^ ^2 facing ^-1 ^ ^5.5 run function lobster:dagger_cast
execute positioned ^-1 ^ ^2 facing ^1 ^ ^5.5 run function lobster:dagger_cast
execute positioned ^ ^1 ^2 facing ^ ^-1 ^5.5 run function lobster:dagger_cast
execute positioned ^ ^-1 ^2 facing ^ ^1 ^5.5 run function lobster:dagger_cast

# launch hit players
execute positioned ^ ^ ^9.5 run tp @a[tag=dagger_hit] ~ ~-2 ~ 
summon tnt ^ ^ ^8.5

# hover
summon marker ~ ~-1.6 ~ {Tags:["focus_tether","init"]}
data modify entity @e[type=marker,tag=init,limit=1,sort=nearest] Rotation set from entity @s Rotation
tag @e[type=marker] remove init
scoreboard players set @s focus_time 22

# place marker to retract dagger
summon marker ^ ^ ^7.5 {Tags:["arc_dagger","init"]}
execute positioned ^ ^ ^7.5 run data modify entity @e[type=marker,tag=init,limit=1,sort=nearest] Rotation set from entity @s Rotation
tag @e[type=marker] remove init
playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 0.75

# item on cooldown (alternates to cloak)
clear @s echo_shard{tnt:16b}
scoreboard players set @s cloak_cd 180
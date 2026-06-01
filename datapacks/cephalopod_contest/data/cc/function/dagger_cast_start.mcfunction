tag @s remove casting_dagger
playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 0.75

# spawn dagger
tag @a remove dagger_hit
execute positioned ^ ^ ^2 run function cc:dagger_cast
execute positioned ^1 ^ ^2 facing ^-1 ^ ^5.5 run function cc:dagger_cast
execute positioned ^-1 ^ ^2 facing ^1 ^ ^5.5 run function cc:dagger_cast
execute positioned ^ ^1 ^2 facing ^ ^-1 ^5.5 run function cc:dagger_cast
execute positioned ^ ^-1 ^2 facing ^ ^1 ^5.5 run function cc:dagger_cast

# launch hit players
execute positioned ^ ^ ^9.5 run tp @a[tag=dagger_hit] ~ ~-2 ~
summon tnt ^ ^ ^8.5 {fuse:0s}

# place marker to retract dagger
summon marker ^ ^ ^7.5 {Tags:["arc_dagger","init"]}
execute positioned ^ ^ ^7.5 run rotate @n[type=marker,tag=init] ~ ~
tag @e[type=marker] remove init
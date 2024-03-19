# get hit players
execute positioned ^2 ^ ^ run function lobster:cloak_cast
execute positioned ^1 ^ ^ run function lobster:cloak_cast
function lobster:cloak_cast
execute positioned ^-1 ^ ^ run function lobster:cloak_cast
execute positioned ^-2 ^ ^ run function lobster:cloak_cast

effect give @s levitation 2 0

# place marker to destroy cloak
summon marker ^ ^ ^5.5 {Tags:["arc_cloak","init"]}
execute positioned ^ ^ ^5.5 run data modify entity @e[type=marker,tag=init,limit=1,sort=nearest] Rotation[0] set from entity @s Rotation[0]
tag @e[type=marker] remove init
playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 0.75

# item on cooldown (alternates to dagger)
clear @s silence_armor_trim_smithing_template{tnt:17b}
scoreboard players set @s dagger_cd 220
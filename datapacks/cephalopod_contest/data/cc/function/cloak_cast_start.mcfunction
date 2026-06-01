playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 0.75 1

# get hit players
execute positioned ^2 ^ ^ run function cc:cloak_cast
execute positioned ^1 ^ ^ run function cc:cloak_cast
function cc:cloak_cast
execute positioned ^-1 ^ ^ run function cc:cloak_cast
execute positioned ^-2 ^ ^ run function cc:cloak_cast
tag @p[tag=casting_cloak] remove casting_cloak

# place marker to destroy cloak
tp @s ^ ^ ^5.5
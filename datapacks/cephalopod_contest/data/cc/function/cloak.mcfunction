playsound item.trident.throw player @a ^ ^ ^ 1 0.5
execute positioned ^2 ^ ^ run function cc:cloak_cast_warn
execute positioned ^1 ^ ^ run function cc:cloak_cast_warn
function cc:cloak_cast_warn
execute positioned ^-1 ^ ^ run function cc:cloak_cast_warn
execute positioned ^-2 ^ ^ run function cc:cloak_cast_warn

# place marker to create cloak
summon marker ^ ^ ^ {Tags:["arc_cloak","init"]}
execute positioned ^ ^ ^ run rotate @n[type=marker,tag=init] ~ 0
scoreboard players set @n[type=marker,tag=init] dagger_time -12
tag @e[type=marker] remove init
tag @s add casting_cloak

effect give @s levitation 2 0

# item on cooldown (alternates to dagger)
clear @s carrot_on_a_stick[custom_data={tnt:17b}]
scoreboard players set @s dagger_cd 220
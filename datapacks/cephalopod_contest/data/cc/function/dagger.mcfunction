# sounds similar to laser
playsound item.trident.thunder player @a ~ ~-1.6 ~ 1 0.7
execute positioned ^ ^ ^2 run function cc:dagger_cast_warn
execute positioned ^1 ^ ^2 facing ^-1 ^ ^5.5 run function cc:dagger_cast_warn
execute positioned ^-1 ^ ^2 facing ^1 ^ ^5.5 run function cc:dagger_cast_warn
execute positioned ^ ^1 ^2 facing ^ ^-1 ^5.5 run function cc:dagger_cast_warn
execute positioned ^ ^-1 ^2 facing ^ ^1 ^5.5 run function cc:dagger_cast_warn

# hover
summon marker ~ ~-1.6 ~ {Tags:["focus_tether","init"]}
rotate @n[type=marker,tag=init] ~ ~
tag @e[type=marker] remove init
scoreboard players set @s focus_time 37
tag @s add casting_dagger

# item on cooldown (alternates to cloak)
clear @s carrot_on_a_stick[custom_data={tnt:16b}]
scoreboard players set @s cloak_cd 180
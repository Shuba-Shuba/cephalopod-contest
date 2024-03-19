scoreboard players add @s dagger_time 1
execute if score @s dagger_time matches 1..10 run function lobster:dagger_repair
execute if score @s dagger_time matches 14 run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 0.5
execute if score @s dagger_time matches 11..22 run function lobster:dagger_uncast
execute if score @s dagger_time matches 11..22 facing ^1 ^ ^5.5 run function lobster:dagger_uncast
execute if score @s dagger_time matches 11..22 facing ^-1 ^ ^5.5 run function lobster:dagger_uncast
execute if score @s dagger_time matches 11..22 facing ^ ^1 ^5.5 run function lobster:dagger_uncast
execute if score @s dagger_time matches 11..22 facing ^ ^-1 ^5.5 run function lobster:dagger_uncast
execute if score @s dagger_time matches 22.. run kill @s
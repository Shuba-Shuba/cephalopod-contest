scoreboard players add @s dagger_time 1
execute if score @s dagger_time matches 1..40 run function lobster:cloak_repair
#execute if score @s dagger_time matches 1..40 run fill ^2. ^1 ^ ^-2. ^-1 ^ tinted_glass keep
execute if score @s dagger_time matches 35 run playsound minecraft:block.piston.contract master @a ~ ~ ~ 1 0.75
execute if score @s dagger_time matches 41 run function lobster:cloak_destroy
#execute if score @s dagger_time matches 41 run fill ^2. ^1 ^ ^-2. ^-1 ^ air replace tinted_glass
execute if score @s dagger_time matches 41 run kill @s
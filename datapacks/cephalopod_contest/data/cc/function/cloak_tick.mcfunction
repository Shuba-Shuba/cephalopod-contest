scoreboard players add @s dagger_time 1
execute if score @s dagger_time matches 0 run function cc:cloak_cast_start
execute if score @s dagger_time matches 1..40 run function cc:cloak_repair
#execute if score @s dagger_time matches 1..40 run fill ^2. ^1 ^ ^-2. ^-1 ^ tinted_glass keep
execute if score @s dagger_time matches 35 run playsound minecraft:block.piston.contract player @a ~ ~ ~ 1 0.75 1
execute if score @s dagger_time matches 41 run function cc:cloak_destroy
#execute if score @s dagger_time matches 41 run fill ^2. ^1 ^ ^-2. ^-1 ^ air replace tinted_glass
execute if score @s dagger_time matches 41 run kill @s
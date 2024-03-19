tp ^ ^ ^1

fill ~0.5 ~0.5 ~0.5 ~-0.5 ~-0.5 ~-0.5 air replace #lobster:destructible

particle minecraft:block minecraft:dirt ~ ~ ~ 1 1 1 0 20 force @a[distance=..80]
playsound minecraft:block.gravel.break master @a[distance=..80] ~ ~ ~ 1 0.75

execute if entity @s run scoreboard players add @s drill_time 1
execute if block ^ ^ ^0.5 #lobster:all unless block ^ ^ ^0.5 #lobster:destructible run kill @s
execute if block ^ ^ ^1 #lobster:all unless block ^ ^ ^1 #lobster:destructible run kill @s
kill @s[scores={drill_time=81..}]
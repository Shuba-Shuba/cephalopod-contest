execute on origin run scoreboard players set @s freeze_cd 200
execute on origin at @s anchored eyes run summon potion ^ ^ ^ {Item:{id:"minecraft:splash_potion",Count:1b,tag:{custom_potion_effects:[{id:"minecraft:water_breathing",amplifier:32b,duration:500}]}},Tags:["freeze"]}
execute on origin positioned 0.0 0.0 0.0 rotated as @s run summon marker ^ ^ ^0.8 {UUID:[I;0,0,0,0]}
data modify entity @e[type=potion,limit=1,sort=nearest,tag=freeze] Motion set from entity 0-0-0-0-0 Pos
execute on origin run data modify entity @e[type=potion,limit=1,sort=nearest,tag=freeze] Owner set from entity @s UUID
kill 0-0-0-0-0
kill @s
tag @a remove target
scoreboard players set @s tp_cd 120
tag @r[distance=0.01..,gamemode=adventure,tag=!ded,tag=!out] add target
execute unless entity @a[tag=target] run tellraw @s {"text":"Nobody to teleport to!","color":"red"}
execute if entity @a[tag=target] run tp @a[tag=target,limit=1]
execute if entity @a[tag=target] run playsound minecraft:entity.enderman.teleport master @a[distance=..16] ~ ~ ~
effect give @a[tag=!out] resistance 3 255 true
execute as @a[tag=!out,tag=bomb] at @s run function cc:landed
gamemode spectator @a[tag=!out,tag=bomb]
tag @a remove bomb
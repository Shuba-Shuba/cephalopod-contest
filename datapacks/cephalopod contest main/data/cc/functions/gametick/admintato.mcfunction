# clock
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. run function cc:clock_min

# end
execute store result score %players game if entity @a[tag=!out,tag=!ded,tag=!hunter,tag=!winner]
execute if score %second game matches ..0 run tag @a[tag=hunter] add winner
execute if score %second game matches ..0 run function cc:end
execute if score %players game matches ..0 run function cc:end

# admintato hunter biden stuff
execute if score %map game matches 0 as @a[tag=!hunter,tag=!out,tag=!ded] at @s if block ~ ~-1 ~ red_concrete run clear @s poisonous_potato
execute if score %map game matches 0 as @a[tag=!hunter,tag=!out,tag=!ded] at @s if block ~ ~-1 ~ red_concrete run tp @s -228 98 853 180 0
execute if score %map game matches 0 as @a[tag=hunter] at @s if block ~ ~-1 ~ structure_void run tp @s ~ 103 812.999
execute as @a[tag=!hunter,tag=!out,tag=!ded,nbt={Inventory:[{id:"minecraft:poisonous_potato"}]}] at @s if block ~ ~-1 ~ green_concrete run tag @s add winner
gamemode spectator @a[tag=winner]
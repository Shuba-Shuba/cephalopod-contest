# clock
execute as @a[scores={deaths=1..},tag=!out,tag=!ded] run function cc:death
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. run function cc:clock_min
execute if score %second game matches ..0 if score %arena game matches 0 run function cc:chunk_end
execute store result score %players game if entity @a[tag=!out,tag=!ded]
execute if score %players game matches ..1 run tag @a[tag=!out,tag=!ded] add winner
execute if score %players game matches ..1 in cc:void run tp @a[tag=!out] 0 69 0
execute if score %players game matches ..1 run function cc:end

# chungus stuff
execute as @a[tag=!out] run attribute @s minecraft:generic.attack_speed base set 4
gamemode survival @a[tag=!out,tag=!ded,gamemode=adventure]
#execute unless score %arena game matches 1 run gamemode survival @a[tag=!out,tag=!ded,gamemode=adventure]
#execute as @a[tag=!out,tag=!ded] if predicate cc:holding_unplaceable run item modify entity @s weapon.mainhand cc:placeable
#execute as @a[tag=!out,tag=!ded] if predicate cc:holding_unmineable run item modify entity @s weapon.mainhand cc:mineable
execute if score %arena game matches 0 run effect give @a haste 1 2 true
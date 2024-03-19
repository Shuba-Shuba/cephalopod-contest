# clock
execute as @a[scores={deaths=1..},tag=!out,tag=!ded] run function lobster:death
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. run function lobster:clock_min
execute if score %second game matches ..0 if score %arena game matches 0 run function lobster:chunk_end
execute store result score %players game if entity @a[tag=!out,tag=!ded]
execute if score %players game matches ..1 run tag @a[tag=!out,tag=!ded] add winner
execute if score %players game matches ..1 in sp:void run tp @a[tag=!out] 0 69 0
execute if score %players game matches ..1 run function lobster:end

# chungus stuff
execute as @a[tag=!out] run attribute @s minecraft:generic.attack_speed base set 4
gamemode survival @a[tag=!out,tag=!ded,gamemode=adventure]
#execute unless score %arena game matches 1 run gamemode survival @a[tag=!out,tag=!ded,gamemode=adventure]
#execute as @a[tag=!out,tag=!ded] if predicate lobster:holding_unplaceable run item modify entity @s weapon.mainhand lobster:placeable
#execute as @a[tag=!out,tag=!ded] if predicate lobster:holding_unmineable run item modify entity @s weapon.mainhand lobster:mineable
effect give @a haste 1 2 true
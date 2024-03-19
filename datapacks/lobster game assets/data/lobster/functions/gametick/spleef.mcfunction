# clock
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. run function lobster:clock_sec
execute if score %second game matches 0 if score %tick game matches 0 run function lobster:spleef_timer

# spleef stuff
effect clear @a[tag=!out,tag=!sumo] weakness
execute as @a[tag=!out,tag=!ded,gamemode=adventure] at @s if block ~ ~-0.5 ~ barrier run tag @s add ded
execute as @a[tag=!out,tag=!ded,gamemode=adventure] at @s if block ~ ~-0.5 ~ barrier if score %map game matches 0 run tp @s -241 118 993 180 0
tag @a[tag=sumo,tag=ded] add loser
tag @a[tag=loser] remove sumo
tag @a[tag=loser] remove ded
execute store result score %players game if entity @a[tag=sumo]
execute if score %players game matches ..1 run function lobster:spleef_end
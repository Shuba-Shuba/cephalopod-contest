# clock
tag @a[gamemode=adventure] remove ded
execute as @a[scores={deaths=1..},tag=!out,tag=!ded,predicate=lobster:spawn] run function lobster:death
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players add %second game 1
execute if score %tick game matches 20.. run function lobster:clock_min

# end of round
execute if entity @a[tag=!out,tag=!ded,team=red] unless entity @a[tag=!out,tag=!ded,team=!red] run tag @a[team=red] add winner
execute if entity @a[tag=!out,tag=!ded,team=blue] unless entity @a[tag=!out,tag=!ded,team=!blue] run tag @a[team=blue] add winner
execute if entity @a[tag=!out,tag=!ded,team=green] unless entity @a[tag=!out,tag=!ded,team=!green] run tag @a[team=green] add winner
execute if entity @a[tag=!out,tag=!ded,team=yellow] unless entity @a[tag=!out,tag=!ded,team=!yellow] run tag @a[team=yellow] add winner
execute if entity @a[tag=winner] run function lobster:end
execute unless entity @a[tag=!out,tag=!ded] run function lobster:end


# micro battles stuff
gamemode survival @a[tag=!out,tag=!ded,gamemode=adventure]
execute as @a[tag=!out,tag=!ded] at @s if block ~ ~-0.5 ~ barrier run function lobster:landed_no_kb
execute if score %second game matches ..9 run function lobster:reinforce_walls
execute if score %second game matches 10 if score %tick game matches 0 run function lobster:break_walls
scoreboard players add %edge game 1
execute if score %second game matches 10.. if score %edge game matches 90.. run function lobster:edge_push
scoreboard players add %arrow game 1
execute if score %arrow game matches 120.. as @a[tag=!out,tag=!ded] store result score @s arrow_count run clear @s arrow 0
execute if score %arrow game matches 120.. run give @a[tag=!out,tag=!ded,scores={arrow_count=..2}] arrow 1
execute if score %arrow game matches 120.. run scoreboard players set %arrow game 0
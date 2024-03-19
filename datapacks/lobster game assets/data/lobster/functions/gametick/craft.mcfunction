# clock
execute as @a[scores={deaths=1..},tag=!out,tag=!ded] run function lobster:death
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players add %second game 1
execute if score %tick game matches 20.. run bossbar set lobster:time name {"score":{"objective":"game","name":"%second"}}
execute if score %tick game matches 20.. run scoreboard players set %tick game 0

# craft stuff
execute store result score %players game if entity @a[tag=!winner,tag=!ded,tag=!out]
gamemode spectator @a[tag=winner]
execute if score %players game matches ..1 unless entity @a[tag=winner] run tag @a[tag=!winner,tag=!ded,tag=!out] add winner
execute if score %players game matches ..1 run function lobster:end
execute as @a[tag=!winner,tag=!out,tag=!ded] run function lobster:craft_display
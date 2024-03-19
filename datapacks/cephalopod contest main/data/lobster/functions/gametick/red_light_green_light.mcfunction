# clock
execute as @a[scores={deaths=1..},tag=!out,tag=!ded] run function lobster:death
execute as @a[tag=!out,tag=!ded,tag=!winner] at @s if score %tmp_light game matches 1 run function lobster:run_on_red_check
bossbar set lobster:time players @a
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. unless score %tmp_light2 game matches 1.. run function lobster:light_rng
execute if score %tick game matches 20.. run scoreboard players set %tick game 0
bossbar set lobster:time name {"score":{"objective":"game","name":"%second"}}
execute store result bossbar lobster:time value run scoreboard players get %second game
execute if score %second game matches ..0 run function lobster:end
execute unless score %tmp_light2 game matches ..0 run scoreboard players remove %tmp_light2 game 1
execute if score %tmp_light2 game matches 0 run function lobster:light_change

# red light green light stuff
execute as @a[tag=!out,tag=!ded,tag=!winner] at @s if block ~ ~-1 ~ red_concrete run gamemode spectator @s
execute as @a[tag=!out,tag=!ded,tag=!winner] at @s if block ~ ~-1 ~ red_concrete run tag @s add winner
#effect give @a[tag=winner] weakness 1 255 true
execute unless entity @a[tag=!out,tag=!ded,gamemode=adventure,tag=!winner] unless score %second game matches ..0 run function lobster:end
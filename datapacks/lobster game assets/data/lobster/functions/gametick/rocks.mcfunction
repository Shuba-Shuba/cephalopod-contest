# clock
execute as @a[scores={deaths=1..},tag=!out,tag=!ded] run function lobster:death
bossbar set lobster:time players @a
scoreboard players add %tick game 1
execute if score %players game matches 2.. if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %players game matches 2.. if score %tick game matches 20.. run scoreboard players set %tick game 0
execute if score %players game matches 1 if score %tick game matches 10.. run scoreboard players remove %second game 1
execute if score %players game matches 1 if score %tick game matches 10.. run scoreboard players set %tick game 0
bossbar set lobster:time name {"score":{"objective":"game","name":"%second"}}
execute store result bossbar lobster:time value run scoreboard players get %second game
execute if score %second game matches 0 if score %tick game matches 0 run tag @a[tag=!out,tag=!ded] add winner
execute if score %second game matches 0 if score %tick game matches 0 run function lobster:end

# generic stuff
execute as @a[gamemode=adventure] at @s if block ~ ~-1 ~ orange_concrete_powder run function lobster:landed_no_kb
execute as @a[gamemode=adventure] at @s if block ~ ~-1 ~ light_blue_stained_glass run function lobster:landed_no_kb
execute as @a[gamemode=adventure] at @s if block ~ ~-1 ~ white_stained_glass run function lobster:landed_no_kb
execute store result score %players game if entity @a[tag=!out,tag=!ded]
execute if score %players game matches 1 unless score #players_check game matches 1 run tellraw @a "1 player remaining - Activated double speed"
execute if score %players game matches 1 unless score #players_check game matches 1 run scoreboard players set %rock game 0
execute if score %players game matches 1 run scoreboard players set #players_check game 1

# rock stuff
execute if score %players game matches 2.. run scoreboard players add %rock game 1
execute if score %players game matches 1 run scoreboard players add %rock game 2
#execute if score %rock game matches 5 run function lobster:rock_crumble
execute if score %rock game matches 10 run function lobster:rock_crumble
#execute if score %rock game matches 15 run function lobster:rock_crumble
execute if score %rock game matches 20 run function lobster:rock_crumble
#execute if score %rock game matches 25 run function lobster:rock_crumble
execute if score %rock game matches 30 run function lobster:rock_crumble
execute if score %rock game matches 30.. as @e[type=marker,tag=breaking,sort=random,limit=1] at @s unless score %second game matches 45.. run function lobster:rock_destroy
execute if score %rock game matches 30.. as @e[type=marker,tag=tmp_rock,sort=random,limit=1] at @s unless score %second game matches 45.. run function lobster:rock
execute if score %rock game matches 30.. run scoreboard players set %rock game 0

# end game if nobody is alive
execute unless entity @a[tag=!out,tag=!ded] run function lobster:end
# clock
bossbar set lobster:time players @a
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players add %second game 1
execute if score %tick game matches 20.. run bossbar set lobster:time name {"score":{"objective":"game","name":"%second"}}
execute if score %tick game matches 20.. run scoreboard players set %tick game 0

# dog fight stuff
execute store result score %players game if entity @e[type=wolf]
execute if score %players game matches ..1 run function lobster:dog_fight_end
execute if score %players game matches 2.. if score %second game matches 10.. as @e[type=wolf,limit=1,sort=random] at @s run function lobster:landed_no_kb
execute as @e[type=wolf] at @s run data modify entity @s AngryAt set from entity @e[type=wolf,limit=1,sort=nearest,distance=0.01..] UUID
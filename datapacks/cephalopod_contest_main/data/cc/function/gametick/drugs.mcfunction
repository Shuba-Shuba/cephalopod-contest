# clock
execute as @a[scores={kills=1..},tag=!out] run function cc:kill_pothead
execute as @a[scores={deaths=1..},tag=!out,team=red,predicate=cc:spawn] run function cc:jail
execute as @a[scores={deaths=1..},tag=!out,team=blue,predicate=cc:spawn] run spreadplayers 257 762 1 32 under 125 false @s
bossbar set cc:time players @a
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players operation %second game += %increment game
execute if score %tick game matches 20.. if score %increment game matches -1 store result bossbar cc:time value run scoreboard players get %second game
execute if score %tick game matches 20.. run bossbar set cc:time name {"score":{"objective":"game","name":"%second"}}
execute if score %tick game matches 20.. run scoreboard players set %tick game 0

# pothead stuff
execute store result score .count jail_time if entity @a[scores={jail_time=1..}]
scoreboard players remove @a[scores={jail_time=1..}] jail_time 1
spreadplayers 257 762 1 32 under 125 false @a[scores={jail_time=1}]

execute if entity @a[predicate=cc:elevator_skyscraper3] if score .skyscraper heist matches ..1 run function cc:close/skyscraper
execute as @a[predicate=cc:elevator_skyscraper3] at @s run tp ~-69 ~-22 ~8
execute unless entity @e[type=#cc:heist,tag=heist,predicate=cc:mob_skyscraper] run fill 327 64 777 327 62 774 minecraft:bone_block[axis=y]
execute unless entity @e[type=#cc:heist,tag=heist,predicate=cc:mob_skyscraper] run fill 327 64 776 327 62 775 minecraft:air
execute unless entity @e[type=#cc:heist,tag=heist,predicate=cc:mob_hotel1] run fill 158 125 770 158 127 767 minecraft:bone_block[axis=y]
execute unless entity @e[type=#cc:heist,tag=heist,predicate=cc:mob_hotel1] run fill 158 125 769 158 127 768 minecraft:air
execute unless entity @e[type=#cc:heist,tag=heist,predicate=cc:mob_hotel2] run fill 192 133 770 192 135 767 minecraft:bone_block[axis=y]
execute unless entity @e[type=#cc:heist,tag=heist,predicate=cc:mob_hotel2] run fill 192 133 769 192 135 768 minecraft:air

execute as @a[scores={money=500..},tag=!winner] if score %increment game matches -1 run scoreboard players remove %second game 60
execute as @a[scores={money=500..}] if score %increment game matches 1 run function cc:first_pothead
tag @a[scores={money=500..}] add winner
gamemode spectator @a[tag=winner]

execute store result score %players game if entity @a[tag=!out,tag=!ded,tag=!winner]
execute if score %players game matches 0 run function cc:end
execute if score %increment game matches -1 if score %second game matches 0 run function cc:end

execute as @e[type=arrow,tag=!arrow_verified] at @s as @e[type=#cc:heist,tag=heist_ranged,dx=0] at @s run function cc:skeleton_shoot
tag @e[type=arrow,tag=!arrow_verified] add arrow_verified

clear @a glass_bottle
spreadplayers 257 762 1 32 under 125 false @a[tag=cop,scores={potion=1..}]
give @a[tag=cop,scores={potion=1..}] minecraft:potion[custom_name='{"text":"Go To Spawn","italic":false}']
scoreboard players set @a potion 0
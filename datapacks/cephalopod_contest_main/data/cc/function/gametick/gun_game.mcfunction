# clock
tag @a[gamemode=adventure] remove ded
execute as @a[scores={deaths=1..},tag=!out,tag=!ded,predicate=cc:spawn] run function cc:death_gun_game
execute as @a[scores={kills=1..},tag=!out,tag=!ded] run function cc:kill_gun_game
bossbar set cc:time players @a
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players add %second game 1
execute if score %tick game matches 20.. run function cc:clock_min

# no item dropping
execute at @a[tag=!out,tag=!ded] as @e[type=item,distance=..10] at @s on origin run data modify entity @e[type=item,sort=nearest,limit=1] Owner set from entity @s UUID
execute at @a[tag=!out,tag=!ded] as @e[type=item,distance=..10] run data modify entity @s PickupDelay set value 0s
execute at @a[tag=!out,tag=!ded] as @e[type=item,distance=..10] at @s on origin run tp @e[type=item,sort=nearest,limit=1] @s

# gun game stuff
execute store result score %players game if entity @a[tag=!winner,tag=!ded,tag=!out]
execute if score %players game matches ..1 unless score %replay game matches 1.. run scoreboard players set %replay_players game 1
execute if score %players game matches ..1 unless score %replay game matches 1.. run function rep:play
execute if score %replay game matches 2 run function cc:end
gamemode spectator @a[tag=winner]
execute unless entity @e[type=item,nbt={Item:{components:{"minecraft:custom_data":{gungame:1b}}}}] run function cc:gun_game_pickup
clear @a[tag=!out] glass_bottle
execute as @a[tag=!out,tag=!ded] at @s if block ~ ~-0.5 ~ tnt run function battle:pyro/launch_no_cd
execute as @a[tag=!out,tag=!ded] at @s if block ~ ~-0.5 ~ barrier run kill @s
execute if score %map game matches 7 run effect give @a[tag=!out,tag=!ded] slow_falling infinite 0 true
execute if score %map game matches 7 run effect give @a[tag=!out,tag=!ded] jump_boost infinite 1 true
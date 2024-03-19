# clock
tag @a[gamemode=adventure] remove ded
execute as @a[scores={deaths=1..},tag=!out,tag=!ded,predicate=cc:spawn] run function cc:death_kitpvp
execute as @a[scores={kills=1..},tag=!out,tag=!ded] run function cc:kill_kitpvp
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. run function cc:clock_min
execute if score %second game matches ..0 run function cc:kitpvp_end

# no item dropping
execute at @a[tag=!out,tag=!ded] as @e[type=item,distance=..10] at @s on origin run data modify entity @e[type=item,sort=nearest,limit=1] Owner set from entity @s UUID
execute at @a[tag=!out,tag=!ded] as @e[type=item,distance=..10] run data modify entity @s PickupDelay set value 0s
execute at @a[tag=!out,tag=!ded] as @e[type=item,distance=..10] at @s on origin run tp @e[type=item,sort=nearest,limit=1] @s

# kitpvp stuff
execute as @a[tag=!out,tag=!ded] at @s if block ~ ~-0.5 ~ tnt run function battle:pyro/launch_no_cd
execute as @a[tag=!out,tag=!ded] at @s if block ~ ~-0.5 ~ barrier run kill @s
execute if score %map game matches 7 run effect give @a[tag=!out,tag=!ded] slow_falling infinite 0 true
execute if score %map game matches 7 run effect give @a[tag=!out,tag=!ded] jump_boost infinite 1 true
execute as @a unless score @s Kit_ID matches 2..3 unless score @s Kit_ID matches 15 unless score @s Kit_ID matches 25 unless score @s Kit_ID matches 42 run clear @s trident
execute as @a[predicate=cc:item_in_offhand] at @s run function cc:item_use
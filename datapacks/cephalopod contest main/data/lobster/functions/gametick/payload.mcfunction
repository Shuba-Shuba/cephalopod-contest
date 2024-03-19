# clock
tag @a[gamemode=adventure] remove ded
execute as @a[scores={deaths=1..},tag=!out,tag=!ded] run function lobster:death_payload1
execute as @a[tag=tmp_dead,predicate=lobster:spawn] run function lobster:death_payload
#execute as @a[scores={kills=1..},tag=!out,tag=!ded] run function lobster:kill_payload
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. as @a[scores={death_time=0}] run function lobster:respawn_payload
execute if score %tick game matches 20.. as @a[scores={death_time=1..}] run function lobster:death_time_genwars
execute if score %tick game matches 20.. run function lobster:clock_payload
execute if score %second game matches ..0 if score .payload_setup game matches 0 run function lobster:payload_time_end
execute if score %second game matches ..0 if score .payload_setup game matches 1 run function lobster:payload_start

# no item dropping
execute at @a[tag=!out,tag=!ded] as @e[type=item,distance=..10] at @s on origin run data modify entity @e[type=item,sort=nearest,limit=1] Owner set from entity @s UUID
execute at @a[tag=!out,tag=!ded] as @e[type=item,distance=..10] run data modify entity @s PickupDelay set value 0s
execute at @a[tag=!out,tag=!ded] as @e[type=item,distance=..10] at @s on origin run tp @e[type=item,sort=nearest,limit=1] @s

# payload stuff
execute as @a[tag=!out,tag=!ded,gamemode=adventure] at @s if block ~ ~-0.5 ~ barrier run kill @s
execute as @a unless score @s Kit_ID matches 2..3 unless score @s Kit_ID matches 15 unless score @s Kit_ID matches 25 unless score @s Kit_ID matches 42 run clear @s trident
execute as @a[predicate=lobster:item_in_offhand] at @s run function lobster:item_use
execute as @e[type=armor_stand,tag=payload] at @s run function lobster:payload_tick
execute if score .payload_sound game matches 1.. run scoreboard players remove .payload_sound game 1
# ded
execute as @a[scores={kills=1..},tag=!out,tag=!ded] run function cc:boss_kill
execute as @a[scores={deaths=1..},tag=!out,tag=!ded,predicate=cc:spawn] run function cc:death_boss
execute store result score %players game if entity @a[tag=!out,tag=!ded]
execute if score %players game matches 0 in cc:void run tp @a[tag=!out] 0 69 0

# setup time
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run function cc:clock_boss
execute if score .boss_setup game matches 1 as @e[type=interaction,tag=kit_select] if data entity @s attack run function cc:boss_class_select
execute if score .boss_setup game matches 1 as @e[type=interaction,tag=kit_select] if data entity @s interaction run function cc:boss_class_select

# boss fight stuff

# empty potion clear
clear @a[tag=!out] glass_bottle

# arrow reload
execute if score .boss_setup game matches 0 as @a[tag=!out,tag=!ded,scores={boss_fight_class=0..2}] store result score @s arrow_count run clear @s arrow 0
execute if score .boss_setup game matches 0 as @a[tag=!out,tag=!ded,scores={boss_fight_class=3}] store result score @s arrow_count run clear @s tipped_arrow 0
execute if score .boss_setup game matches 0 run scoreboard players add @a[tag=!out,tag=!ded,scores={arrow_count=..2}] arrow_time 1
execute if score .boss_setup game matches 0 as @a[tag=!out,tag=!ded,scores={arrow_time=60..}] run function cc:arrow_reload_boss

# boss damage
execute as @a[advancements={cc:hit_dragon=true}] run function cc:boss_hit
execute store result bossbar cc:time value run data get entity @e[type=ender_dragon,limit=1] Health
execute store result score %prev_boss_hp game run data get entity @e[type=ender_dragon,limit=1] Health 10

# edge guard
execute as @a[tag=!out,tag=!ded] at @s if block ~ ~-1 ~ barrier run function cc:death_boss
execute as @a[tag=!out,tag=!ded,y=250,dy=40] at @s run tp @s ~ 249.9 ~

# end of game
execute if score .boss_setup game matches 0 unless entity @e[type=ender_dragon] run function cc:boss_end
execute if score %players game matches 0 run function cc:end
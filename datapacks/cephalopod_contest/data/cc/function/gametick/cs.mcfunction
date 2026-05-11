# clock
tag @a[gamemode=adventure] remove ded
execute as @a[scores={deaths=1..},tag=!out,tag=!ded,predicate=cc:spawn] run function cc:death
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run function cc:clock_cs

# cs stuff
execute as @a[tag=!out,tag=!ded,gamemode=adventure] at @s if block ~ ~-0.5 ~ barrier run kill @s
execute as @a unless score @s Kit_ID matches 2..3 unless score @s Kit_ID matches 15 unless score @s Kit_ID matches 25 unless score @s Kit_ID matches 42 run clear @s trident
execute as @a[predicate=cc:item_in_offhand] at @s run function cc:item_use
execute as @e[type=marker,tag=cs] at @s if block ~ ~ ~ tnt run function cc:planted_bomb
execute as @e[type=tnt,tag=cs] at @s run scoreboard players add @a[team=red,predicate=cc:sneaking,distance=..2] defuse 1
execute as @e[type=tnt,tag=cs] at @s run scoreboard players set @a[team=red,predicate=!cc:sneaking,distance=..2] defuse 0
execute as @e[type=tnt,tag=cs] at @s run scoreboard players set @a[team=red,distance=2..] defuse 0
execute as @a[team=red,scores={defuse=1..}] at @s run function xp:defuse
xp set @a[team=red,scores={defuse=0}] 0 points
title @a[team=red,scores={defuse=0}] actionbar ""
execute unless score #tmp_ended game matches 1 if entity @a[team=red,scores={defuse=200..}] run function cc:cs_defuse_end
execute unless score #tmp_ended game matches 1 unless entity @a[tag=!ded,team=red] run function cc:cs_blue_end
execute unless score #tmp_ended game matches 1 unless entity @a[tag=!ded,team=blue] unless score .cs_bomb game matches 1 run function cc:cs_red_end
scoreboard players set #tmp_ended game 0
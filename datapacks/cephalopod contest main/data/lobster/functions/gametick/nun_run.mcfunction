# clock
execute as @a[scores={deaths=2},tag=!out,tag=!ded,predicate=lobster:spawn] run function lobster:death
execute as @a[scores={deaths=1},tag=!out,tag=!ded] run function lobster:death_nun_run
execute as @a[scores={kills=1..},team=nun] run function lobster:kill_nun_run
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. run function lobster:clock_min
execute unless entity @a[tag=!out,tag=!ded,tag=!winner,team=global] unless entity @a[tag=winner] run tag @a[tag=nun] add winner
execute unless score %replay game matches 1.. unless entity @a[tag=!out,tag=!ded,tag=!winner,team=global] run scoreboard players set %replay_players game 1
execute unless score %replay game matches 1.. unless entity @a[tag=!out,tag=!ded,tag=!winner,team=global] run function rep:play
execute unless score %replay game matches 1.. if score %second game matches ..0 run scoreboard players set %replay_players game 1
execute unless score %replay game matches 1.. if score %second game matches ..0 run function rep:play
execute if score %replay game matches 2 run function lobster:end

# nun run stuff
execute as @a[tag=!out,tag=!winner,tag=!ded] if score @s prayers >= #win prayers run tag @s add winner
gamemode spectator @a[tag=winner,team=global,tag=!out,tag=!nun]
kill @a[tag=!out,predicate=lobster:trap1]
execute as @e[type=fishing_bobber,predicate=lobster:hooked] at @s run tag @p add hooked
execute as @a[team=nun,scores={broken_rod=1..}] run function lobster:indoctrination_fail
execute unless entity @a[tag=!out,tag=!ded,team=nun] run scoreboard players add @a[tag=!out] prayers 5000
execute as @a[predicate=lobster:sneaking] unless score @s sneak matches 1 at @s run function lobster:sneak
execute as @a[predicate=!lobster:sneaking] if score @s sneak matches 1 run scoreboard players set @s sneak 0
execute as @a at @s if block ~ ~-0.5 ~ verdant_froglight run effect give @s glowing 1 0 false
execute as @a at @s if block ~ ~-0.5 ~ verdant_froglight run effect give @s regeneration 1 0 false
execute as @a at @s if block ~ ~-0.5 ~ pearlescent_froglight run effect give @s glowing 1 0 false
execute as @a at @s if block ~ ~-0.5 ~ pearlescent_froglight run effect give @s regeneration 1 0 false
execute as @a at @s if block ~ ~-0.5 ~ chiseled_quartz_block run function lobster:ascend
scoreboard players remove @a[scores={ascending=1..}] ascending 1
execute as @a[scores={ascending=16},predicate=!lobster:trap4] run scoreboard players set @s ascending 0
execute as @a[scores={ascending=16},predicate=lobster:trap4] at @s run tp ~2 ~28 ~9
effect clear @a[scores={ascending=1}] levitation
execute as @a[scores={ascending=1}] at @s run tp @s ~ ~ ~ 180 -20
effect give @a[scores={ascending=1}] resistance 3 255 true
execute as @a[scores={ascending=1}] at @s run function lobster:gravity_launch
execute as @a[predicate=lobster:trap2] at @s run tp @s ~-19 ~60 ~-39
effect give @a[predicate=lobster:trap3] blindness 3 0 true
effect give @a[predicate=lobster:trap3] resistance 3 255 true
execute in sp:void run tp @a[predicate=lobster:trap5] -238.0 99 697.0
execute as @a[tag=!out,predicate=lobster:item_in_offhand] at @s run function lobster:item_use
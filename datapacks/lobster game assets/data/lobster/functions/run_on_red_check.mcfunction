execute as @a at @s unless entity @e[type=marker,tag=rlgl,distance=..1] run scoreboard players set @s walk 1
execute if score @s walk matches 1 run function lobster:landed_no_kb
execute if score @s walk matches 1 run function lobster:death
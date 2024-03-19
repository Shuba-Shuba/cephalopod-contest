# clock
execute as @a[scores={deaths=1..},tag=!out,tag=!ded] run function cc:death
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. run function cc:clock_sec

# dodgeball stuff
execute unless score %second game matches ..15 as @a[predicate=cc:red_cross] at @s run tp 292.501 ~ ~
execute unless score %second game matches ..15 as @a[predicate=cc:blue_cross] at @s run tp 292.499 ~ ~
execute if score %second game matches 15 if score %tick game matches 0 if score %map game matches 0 run tellraw @a {"text":"SUDDEN DEATH - You can now cross sides!","color":"red"}
execute as @a[tag=!out,tag=!ded] at @s if block ~ ~ ~ water if score %map game matches 1 run function cc:landed_no_kb

# end of round
execute store result score %players game if entity @a[tag=!out,tag=!ded,team=blue]
execute if score %players game matches 0 unless score #tmp_ended game matches 1 run function cc:dodgeball_end
execute store result score %players game if entity @a[tag=!out,tag=!ded,team=red]
execute if score %players game matches 0 unless score #tmp_ended game matches 1 run function cc:dodgeball_end
execute if score %second game matches ..0 unless score #tmp_ended game matches 1 run function cc:dodgeball_end
scoreboard players reset #tmp_ended game
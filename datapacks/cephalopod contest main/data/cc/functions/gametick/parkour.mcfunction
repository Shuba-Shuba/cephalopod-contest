# clock
execute as @a[scores={deaths=1..},tag=!out,tag=!ded,predicate=cc:spawn] run function cc:death
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. run function cc:clock_sec
execute if score %second game matches ..0 run function cc:end

# parkour stuff
execute at @a[gamemode=adventure] as @e[type=marker,tag=tmp_glass,distance=..1,limit=1,sort=nearest] run function cc:glass_break
execute as @a[gamemode=adventure] at @s if block ~ ~-1 ~ green_concrete run tag @s add winner
execute as @a[gamemode=adventure] at @s if block ~ ~-1 ~ barrier run function cc:landed_no_kb
execute as @a[gamemode=adventure] at @s if block ~ ~-1 ~ light_blue_stained_glass run function cc:landed_no_kb
effect give @a[tag=winner] weakness 1 255 true
execute unless score %second game matches ..0 unless entity @a[tag=!out,tag=!ded,gamemode=adventure,tag=!winner] run function cc:end
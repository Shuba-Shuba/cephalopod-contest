# clock
execute as @a[scores={deaths=1..},predicate=cc:spawn] run function cc:death
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. run function cc:clock_sec
execute if score %second game matches 0 if score %tick game matches 0 run function cc:skywars_timer

# skywars stuff
gamemode adventure @a[tag=!skywars,gamemode=survival]
gamemode survival @a[tag=skywars,gamemode=adventure]
tag @a[tag=skywars,tag=ded] add loser
tag @a[tag=loser] remove skywars
tag @a[tag=loser] remove ded
execute store result score %players game if entity @a[tag=skywars]
execute if score %players game matches ..1 unless score %replay game matches 1.. run function cc:skywars_end
execute if score %replay game matches 2 run function cc:end
execute if score %replay game matches 3 run function cc:skywars_start
effect give @a[tag=!skywars] weakness 1 255 true
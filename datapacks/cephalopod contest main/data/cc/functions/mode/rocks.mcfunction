# camera reset
function cc:camera_end

# choose map
tag @a remove tmp_teleported
kill @e[type=marker,tag=tmp_rock]
tag @e[type=marker,tag=platform] remove tmp_map
execute if score %map game matches 0 run tag @e[type=marker,tag=platform,tag=map1] add tmp_map
execute if score %map game matches 1 run tag @e[type=marker,tag=platform,tag=map2] add tmp_map
execute if score %map game matches 2 run tag @e[type=marker,tag=platform,tag=map3] add tmp_map
execute if score %map game matches 3 run tag @e[type=marker,tag=platform,tag=map4] add tmp_map
execute as @e[type=marker,tag=platform,tag=tmp_map,sort=random] at @s run function cc:rock_tp

# start round
scoreboard players set %mode game 7
scoreboard objectives setdisplay sidebar game
#tellraw @a "\nSussy Rocks:\n\"Rocks\" (platforms) will be destroyed every 30 ticks (1.5 seconds). TURN ON PARTICLES!\n"
bossbar set cc:time max 50
bossbar set cc:time value 50
scoreboard players set %second game 50
effect give @a[tag=!out,tag=!ded] slowness 3 255 true
effect give @a[tag=!out,tag=!ded] jump_boost 3 128 true
tag @a remove tmp_teleported
effect give @a[tag=!out] resistance infinite 255 true
gamerule fallDamage false

# setup platforms
execute as @e[type=marker,tag=platform,tag=tmp_map] at @s run summon marker ~ ~ ~ {Tags:["tmp_rock"]}
execute as @e[type=marker,tag=platform,tag=map1] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 netherrack
execute as @e[type=marker,tag=platform,tag=map2] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 snow_block
execute as @e[type=marker,tag=platform,tag=map3] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 ice
execute as @e[type=marker,tag=platform,tag=map4] at @s run fill ~1 ~ ~1 ~-1 ~ ~-1 grass_block
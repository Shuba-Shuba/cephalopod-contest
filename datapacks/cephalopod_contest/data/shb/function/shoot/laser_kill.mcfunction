# setup
tag @p add this
summon marker ~ ~ ~ {Tags:["tmp_raycast"]}

# draw hitscan line
# range = .r * 0.25 blocks
scoreboard players set .r raycast 400
scoreboard players set #bool raycast 0
execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=tmp_raycast] run function shb:raycast/loop_laser_kill

# cleanup
kill @e[type=marker,tag=tmp_raycast]
tag @p[tag=this] remove this
tag @e remove hit

execute as @a[distance=..80] at @s run playsound minecraft:block.beacon.deactivate player @s ~ ~ ~ 1 2
execute as @a[distance=..80] at @s run playsound minecraft:block.gravel.break player @s ~ ~ ~ 1 2
execute as @a[distance=..80] at @s run playsound minecraft:block.grass.break player @s ~ ~ ~ 1 0
#execute as @a[distance=..80] at @s run playsound minecraft:entity.firework_rocket.twinkle player @s ~ ~ ~ 1 2
#execute as @a[distance=..80] at @s run playsound minecraft:entity.firework_rocket.blast player @s ~ ~ ~ 1 0
#execute as @a[distance=..80] at @s run playsound minecraft:entity.firework_rocket.launch player @s ~ ~ ~ 1 1.2
execute as @a[distance=..80] at @s run playsound minecraft:entity.warden.sonic_boom player @s ~ ~ ~ 1 2
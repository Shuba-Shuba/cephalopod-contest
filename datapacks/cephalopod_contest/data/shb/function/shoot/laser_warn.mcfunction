# setup
tag @p add this
summon marker ~ ~ ~ {Tags:["tmp_raycast"]}

# draw hitscan line
# range = .r * 0.25 blocks
scoreboard players set .r raycast 400
scoreboard players set #bool raycast 0
execute anchored eyes positioned ^ ^ ^ as @e[type=marker,tag=tmp_raycast] run function shb:raycast/loop_laser

# cleanup
kill @e[type=marker,tag=tmp_raycast]
tag @p[tag=this] remove this
tag @e remove hit

execute as @a[distance=..80] at @s run playsound minecraft:item.trident.thunder master @s ~ ~ ~ 1 .7
execute as @a[distance=..80] at @s run playsound minecraft:item.trident.riptide_1 master @s ~ ~ ~ 1 0
execute as @a[distance=..80] at @s run playsound minecraft:block.conduit.deactivate master @s
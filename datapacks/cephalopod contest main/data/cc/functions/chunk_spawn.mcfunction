# debug
say [debug] SPAWNED CHUNK

# remove tag
tag @s remove tmp_unteleported

# place chunk
forceload add ~ ~ ~20 ~20
execute if score %map game matches 0 run place template minecraft:chunk00 ~ ~ ~
execute if score %map game matches 1 run place template minecraft:chunk01 ~ ~ ~
execute if score %map game matches 2 run place template minecraft:chunk02 ~ ~ ~
execute if score %map game matches 3 run place template minecraft:chunk03 ~ ~ ~
execute if score %map game matches 4 run place template minecraft:chunk04 ~ ~ ~

# teleport to chunk
spreadplayers ~8.5 ~8.5 0 8 under 300 false @s

# run this again for next player (it won't do anything if everyone already has their chunk)
execute as @r[tag=tmp_unteleported] positioned ~20 ~ ~ run function cc:chunk_spawn
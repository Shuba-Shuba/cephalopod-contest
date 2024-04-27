forceload add ~ ~ ~200 ~
place template minecraft:blocks_wall ~ ~ ~1
tellraw @a "[DEBUG] started recursively creating building areas..."
execute positioned ~1 ~ ~ run function cc:blocks_spawn
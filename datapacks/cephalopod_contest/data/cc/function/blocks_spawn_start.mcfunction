forceload add ~ ~ ~200 ~
place template cc:blocks/wall ~ ~ ~1 none none 1 0 strict
tellraw @a "[DEBUG] started recursively creating building areas..."
execute positioned ~1 ~ ~ run function cc:blocks_spawn
advancement revoke @s only lobster:edge_check

execute as @e[type=marker,tag=micro_edge] if predicate lobster:in_build_reach at @s run fill ^ ^-25 ^-3 ^ ^37 ^-1 air
execute as @e[type=marker,tag=micro_lava] if predicate lobster:in_build_reach at @s run fill ^1 ^-2 ^ ^-1 ^-1 ^ structure_void
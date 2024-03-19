particle end_rod ~ ~ ~ 0 0 0 0 1 normal @a
execute positioned ^ ^ ^0.5 positioned ~ ~-1.5 ~ unless entity @s[distance=..0.5] positioned ~ ~1.5 ~ run function lobster:arc_reatomize_line
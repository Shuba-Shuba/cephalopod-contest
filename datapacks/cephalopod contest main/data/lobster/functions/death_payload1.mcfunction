# unmark as dead
scoreboard players set @s deaths 0
tag @s remove ded

# start respawning
tag @s add tmp_dead
gamemode spectator
title @s times 0 100 0
scoreboard players operation @s death_time = time.payload_respawn config

# adjust red team respawn time if odd player count
execute store result score .red game if entity @a[team=red]
execute store result score .blu game if entity @a[team=blue]
execute unless score .red game = .blu game run function lobster:death_payload_odd
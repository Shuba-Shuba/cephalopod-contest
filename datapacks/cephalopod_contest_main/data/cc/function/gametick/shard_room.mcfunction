tag @e[type=minecraft:glow_item_frame,tag=shard1,tag=!filled,nbt={Item:{id:"minecraft:amethyst_shard"}}] add filled
tag @e[type=minecraft:glow_item_frame,tag=shard2,tag=!filled,nbt={Item:{id:"minecraft:prismarine_shard"}}] add filled
tag @e[type=minecraft:glow_item_frame,tag=shard3,tag=!filled,nbt={Item:{id:"minecraft:echo_shard"}}] add filled
execute store result score #shards game if entity @e[type=minecraft:glow_item_frame,tag=filled]
execute store result bossbar cc:time value run scoreboard players get #shards game
execute if score #shards game matches 3 run tellraw @a "This is a WIP. Shuba hasn't coded in the actual reward yet."
execute if score #shards game matches 3 run function cc:end
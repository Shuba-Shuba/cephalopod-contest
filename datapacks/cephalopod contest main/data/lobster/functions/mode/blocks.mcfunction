# start timer (1m = 1ms)
worldborder add -10000 10

# camera reset
function lobster:camera_end

## round setup
scoreboard players set %mode game 11
execute store result bossbar lobster:time max run scoreboard players get time.blocks config
execute store result bossbar lobster:time value run scoreboard players get time.blocks config
scoreboard players operation %second game = time.blocks config
item replace entity @a[tag=!out] hotbar.0 with oak_planks{CanPlaceOn:["minecraft:glass"]} 1
item replace entity @a[tag=!out] hotbar.1 with cobblestone{CanPlaceOn:["minecraft:glass"]} 1
item replace entity @a[tag=!out] hotbar.2 with dirt{CanPlaceOn:["minecraft:glass"]} 1
item replace entity @a[tag=!out] hotbar.3 with bricks{CanPlaceOn:["minecraft:glass"]} 1
item replace entity @a[tag=!out] hotbar.4 with netherrack{CanPlaceOn:["minecraft:glass"]} 1
item replace entity @a[tag=!out] hotbar.5 with waxed_oxidized_copper{CanPlaceOn:["minecraft:glass"]} 1
item replace entity @a[tag=!out] hotbar.6 with dark_prismarine{CanPlaceOn:["minecraft:glass"]} 1
item replace entity @a[tag=!out] hotbar.7 with iron_block{CanPlaceOn:["minecraft:glass"]} 1
item replace entity @a[tag=!out] hotbar.8 with netherite_block{CanPlaceOn:["minecraft:glass"]} 1
scoreboard players set %map game 0
tag @a[tag=!out,tag=!ded] add tmp_unteleported
execute in sp:void run tp @a[tag=tmp_unteleported] 194 164 1025
execute as @r[tag=tmp_unteleported] in sp:void positioned 205 137 1024 run function lobster:blocks_spawn_start

## board rng
# randomize block order
scoreboard players set %index blocks 9
summon marker ~ ~ ~ {Tags:["tmp_blocks_rng","oak"]}
summon marker ~ ~ ~ {Tags:["tmp_blocks_rng","cobble"]}
summon marker ~ ~ ~ {Tags:["tmp_blocks_rng","dirt"]}
summon marker ~ ~ ~ {Tags:["tmp_blocks_rng","bricks"]}
summon marker ~ ~ ~ {Tags:["tmp_blocks_rng","netherrack"]}
summon marker ~ ~ ~ {Tags:["tmp_blocks_rng","copper"]}
summon marker ~ ~ ~ {Tags:["tmp_blocks_rng","pris"]}
summon marker ~ ~ ~ {Tags:["tmp_blocks_rng","iron"]}
summon marker ~ ~ ~ {Tags:["tmp_blocks_rng","netherite"]}
execute as @e[type=marker,tag=tmp_blocks_rng,sort=random] store result score @s blocks run scoreboard players remove %index blocks 1

# fill global boards
scoreboard players set %index blocks 8
execute positioned 200 164 1025 in sp:void run function lobster:blocks_fill_global
execute positioned 200 164 1024 in sp:void run function lobster:blocks_fill_global
execute positioned 200 164 1023 in sp:void run function lobster:blocks_fill_global
execute positioned 200 165 1025 in sp:void run function lobster:blocks_fill_global
execute positioned 200 165 1024 in sp:void run function lobster:blocks_fill_global
execute positioned 200 165 1023 in sp:void run function lobster:blocks_fill_global
execute positioned 200 166 1025 in sp:void run function lobster:blocks_fill_global
execute positioned 200 166 1024 in sp:void run function lobster:blocks_fill_global
execute positioned 200 166 1023 in sp:void run function lobster:blocks_fill_global

# fill player boards
execute at @e[type=marker,tag=tmp_blocks_board] run clone 200 164 1026 208 172 1026 ~ ~ ~
kill @e[type=marker,tag=tmp_blocks_board]
execute at @e[type=marker,tag=tmp_blocks_copy] run fill ~ ~ ~ ~ ~2 ~2 air replace light

# end timer
execute store result score #dwb game run worldborder get
scoreboard players remove #dwb game 59999968
scoreboard players operation #dwb game *= -1 calc
worldborder set 59999968
tellraw @a ["total load time: ",{"score":{"name":"#dwb","objective":"game"}}," ms"]
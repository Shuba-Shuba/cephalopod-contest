execute as @e[type=marker,tag=tmp_blocks_rng] if score @s blocks = %index blocks run tag @s add current
execute as @e[type=marker,tag=blocks_slot] if score @s blocks = %index blocks run tag @s add current_slot

execute if entity @e[type=marker,tag=current,tag=oak] run setblock ~ ~ ~ oak_planks
execute if entity @e[type=marker,tag=current,tag=cobble] run setblock ~ ~ ~ cobblestone
execute if entity @e[type=marker,tag=current,tag=dirt] run setblock ~ ~ ~ dirt
execute if entity @e[type=marker,tag=current,tag=bricks] run setblock ~ ~ ~ bricks
execute if entity @e[type=marker,tag=current,tag=netherrack] run setblock ~ ~ ~ netherrack
execute if entity @e[type=marker,tag=current,tag=copper] run setblock ~ ~ ~ waxed_oxidized_copper
execute if entity @e[type=marker,tag=current,tag=pris] run setblock ~ ~ ~ dark_prismarine
execute if entity @e[type=marker,tag=current,tag=iron] run setblock ~ ~ ~ iron_block
execute if entity @e[type=marker,tag=current,tag=netherite] run setblock ~ ~ ~ netherite_block

execute if entity @e[type=marker,tag=current,tag=oak] at @e[type=marker,tag=current_slot] run fill ~ ~ ~ ~2 ~2 ~ oak_planks
execute if entity @e[type=marker,tag=current,tag=cobble] at @e[type=marker,tag=current_slot] run fill ~ ~ ~ ~2 ~2 ~ cobblestone
execute if entity @e[type=marker,tag=current,tag=dirt] at @e[type=marker,tag=current_slot] run fill ~ ~ ~ ~2 ~2 ~ dirt
execute if entity @e[type=marker,tag=current,tag=bricks] at @e[type=marker,tag=current_slot] run fill ~ ~ ~ ~2 ~2 ~ bricks
execute if entity @e[type=marker,tag=current,tag=netherrack] at @e[type=marker,tag=current_slot] run fill ~ ~ ~ ~2 ~2 ~ netherrack
execute if entity @e[type=marker,tag=current,tag=copper] at @e[type=marker,tag=current_slot] run fill ~ ~ ~ ~2 ~2 ~ waxed_oxidized_copper
execute if entity @e[type=marker,tag=current,tag=pris] at @e[type=marker,tag=current_slot] run fill ~ ~ ~ ~2 ~2 ~ dark_prismarine
execute if entity @e[type=marker,tag=current,tag=iron] at @e[type=marker,tag=current_slot] run fill ~ ~ ~ ~2 ~2 ~ iron_block
execute if entity @e[type=marker,tag=current,tag=netherite] at @e[type=marker,tag=current_slot] run fill ~ ~ ~ ~2 ~2 ~ netherite_block

kill @e[type=marker,tag=current]
tag @e[type=marker,tag=current_slot] remove current_slot
scoreboard players remove %index blocks 1
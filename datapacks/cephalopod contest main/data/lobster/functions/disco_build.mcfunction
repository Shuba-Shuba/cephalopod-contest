# build x row
scoreboard players set .x game 21
execute if score %map game matches 0 positioned -110 64 -110 in sp:void run function lobster:disco_build_x

# sfx
execute as @a[tag=!out] at @s run playsound minecraft:block.note_block.snare master @s
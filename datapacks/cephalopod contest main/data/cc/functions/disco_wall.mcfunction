# reroll floor once more
function cc:disco_build

# fill wall with random color
execute store result storage cc:disco index int 1 run random value 0..15
function cc:disco_wall_array with storage cc:disco

# sfx
execute as @a[tag=!out] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0
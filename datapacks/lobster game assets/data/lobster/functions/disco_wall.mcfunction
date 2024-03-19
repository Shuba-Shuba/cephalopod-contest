# reroll floor once more
function lobster:disco_build

# fill wall with random color
execute store result storage lobster:disco index int 1 run random value 0..15
function lobster:disco_wall_array with storage lobster:disco

# sfx
execute as @a[tag=!out] at @s run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0
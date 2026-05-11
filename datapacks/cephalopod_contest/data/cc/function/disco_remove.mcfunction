# remove all blocks from floor except $(block) by copying only $(block) to an otherwise empty space, then copying that space back to the floor
$clone -110 64 -110 -90 64 -90 -110 63 -110 filtered $(block)
clone -110 63 -110 -90 63 -90 -110 64 -110 replace move
fill -110 63 -110 -90 63 -90 light[level=15]

# sfx
execute as @a[tag=!out] at @s run playsound minecraft:block.piston.contract master @s
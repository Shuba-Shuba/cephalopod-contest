# remove lightning markers and blocks
execute as @e[type=marker,tag=tmp_lightning] at @s run function cc:lightning_remove1

# reset pressure plates for block update reasons
fill 1695 96 90 1695 96 85 minecraft:warped_pressure_plate destroy
fill 1661 96 89 1661 96 86 minecraft:warped_pressure_plate destroy
fill 1621 96 97 1621 96 92 minecraft:warped_pressure_plate destroy
# build z row
scoreboard players set .z game 21
function lobster:disco_build_z

# next x block
scoreboard players remove .x game 1
execute if score .x game matches 1.. positioned ~1 ~ ~ run function lobster:disco_build_x
# build z block
# block rng
execute store result storage lobster:disco index int 1 run random value 0..15
function lobster:disco_build_array with storage lobster:disco

# next z block
scoreboard players remove .z game 1
execute if score .z game matches 1.. positioned ~ ~ ~1 run function lobster:disco_build_z
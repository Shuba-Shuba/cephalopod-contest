# build z block
# block rng
execute store result storage cc:disco index int 1 run random value 0..15
function cc:disco_build_array with storage cc:disco

# next z block
scoreboard players remove .z game 1
execute if score .z game matches 1.. positioned ~ ~ ~1 run function cc:disco_build_z
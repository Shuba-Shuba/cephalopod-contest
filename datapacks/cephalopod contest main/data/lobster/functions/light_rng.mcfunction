# light rng
scoreboard players set .in prng 6
function shb:rng
scoreboard players operation %tmp_light2 game = .out prng
scoreboard players add %tmp_light2 game 6
scoreboard players operation %tmp_light2 game *= 10 integers
#tellraw @a ["Light RNG Output: ",{"score":{"name":"%tmp_light2","objective":"game"}}]
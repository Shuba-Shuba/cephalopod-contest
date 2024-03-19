# button rng
scoreboard players set .in prng 5
function shb:rng
scoreboard players operation %bad button = .out prng
scoreboard players add %bad button 1
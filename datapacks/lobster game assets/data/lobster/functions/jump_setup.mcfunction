scoreboard players set .in prng 2
function shb:rng
execute if score .out prng matches 0 run summon marker ~1 ~ ~ {Tags:["tmp_glass"]}
execute if score .out prng matches 1 run summon marker ~-1 ~ ~ {Tags:["tmp_glass"]}
# 3 = number of partitions
scoreboard players operation #tmp calc = .size deck
scoreboard players operation #tmp calc /= 3 calc

# rng: 5 to 7
scoreboard players set .in prng 3
function shb:rng
scoreboard players add .out prng 5

# get partition
data remove storage cards tmp
scoreboard players operation .size deck -= .out prng
function cc:uno/shuffle/get

# shift partition
execute store result score .bool deck if predicate cc:rng50
execute if score .bool deck matches 0 run data modify storage cards tmp1 prepend from storage cards tmp[]
execute if score .bool deck matches 1 run data modify storage cards tmp1 append from storage cards tmp[]

# loop
execute if score .size deck matches 1.. run function cc:uno/shuffle/loop
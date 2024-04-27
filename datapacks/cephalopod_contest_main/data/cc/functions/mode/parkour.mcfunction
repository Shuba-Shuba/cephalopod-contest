scoreboard players set %mode game 1
function cc:camera_end
execute if score %map game matches 0 in cc:void run tp @a[tag=!out] -49 84 141 0 0
execute if score %map game matches 1 in cc:void run tp @a[tag=!out] -8 87 238 90 0
execute if score %map game matches 2 in cc:void run tp @a[tag=!out] -13 86 286 -90 0
execute store result bossbar cc:time max run scoreboard players get time.glass_jumps config
execute store result bossbar cc:time value run scoreboard players get time.glass_jumps config
scoreboard players operation %second game = time.glass_jumps config
effect give @a[tag=!out] resistance infinite 255 true
gamerule fallDamage false

# isolate jump markers
tag @e[type=marker,tag=glass_jump] remove inverted

# run prng
scoreboard players set .in prng 8
function shb:rng
scoreboard players operation input.glass calc = .out prng

### Process RNG Output By "Converting" To Binary
# check 1s bit
scoreboard players operation tmp.glass calc = input.glass calc
scoreboard players operation tmp.glass calc %= integers.2 calc
execute if score tmp.glass calc matches 1 run tag @e[type=marker,tag=glass1] add inverted
scoreboard players operation input.glass calc /= integers.2 calc

# check 2s bit
scoreboard players operation tmp.glass calc = input.glass calc
scoreboard players operation tmp.glass calc %= integers.2 calc
execute if score tmp.glass calc matches 1 run tag @e[type=marker,tag=glass2] add inverted
scoreboard players operation input.glass calc /= integers.2 calc

# check 4s bit
scoreboard players operation tmp.glass calc = input.glass calc
scoreboard players operation tmp.glass calc %= integers.2 calc
execute if score tmp.glass calc matches 1 run tag @e[type=marker,tag=glass3] add inverted

# activate platforms
execute as @e[type=marker,tag=glass_jump,tag=!inverted,tag=map1] at @s run summon marker ~1 ~ ~ {Tags:["tmp_glass"]}
execute as @e[type=marker,tag=glass_jump,tag=inverted,tag=map1] at @s run summon marker ~-1 ~ ~ {Tags:["tmp_glass"]}
execute as @e[type=marker,tag=glass_jump,tag=!inverted,tag=map2] at @s run summon marker ~ ~ ~1 {Tags:["tmp_glass"]}
execute as @e[type=marker,tag=glass_jump,tag=inverted,tag=map2] at @s run summon marker ~ ~ ~-1 {Tags:["tmp_glass"]}
execute as @e[type=marker,tag=glass_jump,tag=!inverted,tag=map3] at @s run summon marker ~ ~ ~1 {Tags:["tmp_glass"]}
execute as @e[type=marker,tag=glass_jump,tag=inverted,tag=map3] at @s run summon marker ~ ~ ~-1 {Tags:["tmp_glass"]}
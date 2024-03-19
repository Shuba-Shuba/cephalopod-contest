# .in prng = input range
# .out prng = "random" number from 0 to .in-1

#scoreboard players add .1 prng 1
#execute if score .1 prng matches 999999.. run scoreboard players set .1 prng 0
#scoreboard players operation .1 prng *= .2 prng
#scoreboard players operation .1 prng %= .3 prng
#scoreboard players operation .out prng = .1 prng
execute store result score .out prng run random value 0..999999
scoreboard players operation .out prng %= .in prng
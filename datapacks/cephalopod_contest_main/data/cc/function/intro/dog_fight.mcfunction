# set amount of possible maps
execute store result score %map game run random value 0..2

# run prng
#function shb:rng
#scoreboard players operation %map game = .out prng

# start round
gamemode spectator @a[tag=!out]
scoreboard players set %camera game 23
execute if score %map game matches 0 run tp @a[tag=!out] -215 118 1034
execute if score %map game matches 1 run tp @a[tag=!out] -215 118 1152
execute if score %map game matches 2 run tp @a[tag=!out] -215 118 1270
schedule function cc:mode/dog_fight 9s
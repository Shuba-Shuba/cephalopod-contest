scoreboard players set .payload_setup game 0
scoreboard players operation %second game = time.payload config
execute if score %map game matches 0 run fill 431 90 465 431 90 466 minecraft:stone_pressure_plate
execute if score %map game matches 0 run setblock 424 90 472 minecraft:stone_pressure_plate
execute if score %map game matches 0 run fill 423 98 477 422 98 477 minecraft:stone_pressure_plate
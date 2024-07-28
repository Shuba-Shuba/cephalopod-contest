scoreboard players set .cs_setup game 0
execute store result bossbar cc:time max run scoreboard players operation %second game = time.cs config
execute if score %map game matches 0 in cc:void run setblock 352 90 425 oak_pressure_plate
execute if score %map game matches 0 in cc:void run setblock 410 90 486 heavy_weighted_pressure_plate
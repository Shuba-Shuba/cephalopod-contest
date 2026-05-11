### setup
scoreboard players reset @s death_time
gamemode adventure
title @s clear
title @s reset


### teleport to spawnpoint

## city streets

# hotel (blu 0)
execute if score %map game matches 0 if score .payload_checkpoint game matches 0 run tp @s[team=blue] 423.0 90 476.0
# prison (red 0)
execute if score %map game matches 0 if score .payload_checkpoint game matches 0 run tp @s[team=red] 490 90 486

# parking lot (blu 1)
execute if score %map game matches 0 if score .payload_checkpoint game matches 1 run tp @s[team=blue] 464 90 484
# fire station (red 1)
execute if score %map game matches 0 if score .payload_checkpoint game matches 1 run tp @s[team=red] 490 90 448

# fire station (blu 2)
execute if score %map game matches 0 if score .payload_checkpoint game matches 2 run tp @s[team=blue] 490 90 448
# crack shack (red 2)
execute if score %map game matches 0 if score .payload_checkpoint game matches 2 run tp @s[team=red] 425 90 425

# crack shack (blu 3)
execute if score %map game matches 0 if score .payload_checkpoint game matches 3 run tp @s[team=blue] 425 90 425
# skyscraper (red 3)
execute if score %map game matches 0 if score .payload_checkpoint game matches 3 run tp @s[team=red] 464 90 467


### give kit
function battle:kits/random
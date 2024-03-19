# [x,z] -> [-x,-z]
scoreboard players set .z raycast 100
scoreboard players set .x raycast 100
scoreboard players operation .x raycast -= #x raycast
scoreboard players operation .z raycast -= #z raycast
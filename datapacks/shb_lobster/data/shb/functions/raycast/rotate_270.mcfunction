# [x,z] -> [z,-x]
scoreboard players set .z raycast 100
scoreboard players operation .z raycast -= #x raycast
scoreboard players operation .x raycast = #z raycast
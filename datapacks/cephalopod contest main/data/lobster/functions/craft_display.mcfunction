scoreboard players operation .search craft_index = @s craft_index
execute as @e[type=marker,tag=craft_storage] if score @s craft_index = .search craft_index run tag @s add display
title @s actionbar ["Remaining items to craft: ",{"nbt":"data.names[]","entity":"@e[type=marker,tag=craft_storage,tag=display]","interpret":true}]
tag @e[type=marker] remove display
# NOTE: teleport_duration has a max value of 59 ticks (2.95s)
# to solve this, split up long paths into multiple intervals
$data modify entity @e[type=item_display,tag=camera,limit=1] teleport_duration set value $(duration)
$data modify storage cc:camera to set value "$(to)"
scoreboard players set %camera2 game 1
# add support for cameras in other dimensions
execute if dimension cc:chunk run scoreboard players set %camera2 game 2
execute if dimension minecraft:the_end run scoreboard players set %camera2 game 3
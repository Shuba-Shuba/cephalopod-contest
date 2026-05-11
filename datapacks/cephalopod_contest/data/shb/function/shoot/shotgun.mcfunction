# spread
tag @s add shotgun
execute facing ^0.1 ^0.1 ^1 run function shb:shoot/bullet
execute facing ^-0.1 ^0.1 ^1 run function shb:shoot/bullet
execute facing ^0.1 ^-0.1 ^1 run function shb:shoot/bullet
execute facing ^-0.1 ^-0.1 ^1 run function shb:shoot/bullet
tag @s remove shotgun

scoreboard players operation @e[type=!#shb:protect,tag=hit] hit = .i_ticks config
tag @e[type=!#shb:protect] remove hit
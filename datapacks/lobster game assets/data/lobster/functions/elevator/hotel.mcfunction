# heist statuses:
# 0 = not started
# 1 = in progress
# 2 = heist ended or cop is inside
execute unless score .hotel heist matches 1.. unless entity @s[team=blue] run function lobster:heist/hotel
execute unless score .hotel heist matches 1.. if entity @s[team=blue] run tellraw @s "Cops can't start a heist!"
execute if score .hotel heist matches 2.. run tp @s 224.0 122.0625 771.0 -90 0
execute if score .hotel heist matches 2.. run tellraw @s "You can't enter this heist!"
execute if score .hotel heist matches 1 run tp @s @e[type=marker,tag=jigsaw_tp,tag=hotel,limit=1]
execute if score .hotel heist matches 1 if entity @s[team=blue] run function lobster:close/hotel
# heist statuses:
# 0 = not started
# 1 = in progress
# 2 = heist ended or cop is inside
execute unless score .bank heist matches 1.. unless entity @s[team=blue] run function cc:heist/bank
execute unless score .bank heist matches 1.. if entity @s[team=blue] run tellraw @s "Cops can't start a heist!"
execute if score .bank heist matches 2.. run tp @s 243.0 122 790.0 -90 0
execute if score .bank heist matches 2.. run tellraw @s "You can't enter this heist!"
execute if score .bank heist matches 1 at @s run tp @s ~-283 ~-43 ~-212
execute if score .bank heist matches 1 run setblock -45 80 576 redstone_block
execute if score .bank heist matches 1 run playsound minecraft:block.piston.contract master @s -43.0 79 578.0 1 0.75
execute if score .bank heist matches 1 if entity @s[team=blue] run function cc:close/bank
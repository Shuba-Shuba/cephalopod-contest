# heist statuses:
# 0 = not started
# 1 = in progress
# 2 = heist ended or cop is inside
execute unless score .skyscraper heist matches 1.. unless entity @s[team=blue] run function cc:heist/skyscraper
execute unless score .skyscraper heist matches 1.. if entity @s[team=blue] run tellraw @s "Cops can't start a heist!"
execute if score .skyscraper heist matches 2.. run tp @s 268.0 122 771.0 90 0
execute if score .skyscraper heist matches 2.. run tellraw @s "You can't enter this heist!"
execute if score .skyscraper heist matches 1 run tp @s 339.0 56 767.0 0 0
execute if score .skyscraper heist matches 1 if entity @s[team=blue] run function cc:close/skyscraper
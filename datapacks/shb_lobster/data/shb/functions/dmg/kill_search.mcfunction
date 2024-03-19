# unmark earlier killers
tag @e remove killer

# get killer UUID
scoreboard players operation .system UUID0 = @s killerUUID0
scoreboard players operation .system UUID1 = @s killerUUID1
scoreboard players operation .system UUID2 = @s killerUUID2
scoreboard players operation .system UUID3 = @s killerUUID3

# check for matching UUID
execute as @e if score @s UUID0 = .system UUID0 if score @s UUID1 = .system UUID1 if score @s UUID2 = .system UUID2 if score @s UUID3 = .system UUID3 run tag @s add killer
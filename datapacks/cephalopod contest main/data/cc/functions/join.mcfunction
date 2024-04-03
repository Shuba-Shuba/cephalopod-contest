# board case
execute if score %in game matches 2 run tag @s add joining

# in-game case
execute if score %in game matches 1 run gamemode spectator @s[tag=!out]
execute if score %in game matches 1 run tag @s[tag=!out] add ded
execute if score %in game matches 1 run tp @s[tag=!out] @r[tag=!out,tag=!ded]
execute if score %in game matches 1 run tellraw @s "Game is in progress. You will spectate until the current game ends."

# lobby case
execute if score %in game matches 0 as @s[tag=!out] run function cc:join_event_money
execute if score %in game matches 0 run gamemode adventure @s[tag=!out]
execute if score %in game matches 0 run tp @s[tag=!out] 0 69 0

# tagged as "out" case
tellraw @s[tag=out] "You have the \"out\" tag, meaning the game will not teleport you each round. Useful if building during games."
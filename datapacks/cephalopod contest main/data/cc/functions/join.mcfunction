# if no join score, welcome new player
execute unless score @s join matches 0.. run tellraw @s "Welcome new player, to Cephalopod Contest, a fast-paced party game, currently consisting of 26 gamemodes."

# setup
scoreboard players set @s join 0

# in game case
execute if score %in game matches 1 run gamemode spectator @s[tag=!out]
execute if score %in game matches 1 run tag @s[tag=!out] add ded
execute if score %in game matches 1 run tp @s[tag=!out] @r[tag=!out,tag=!ded]
execute if score %in game matches 1 run tellraw @s "Game is in progress. You will spectate until the current game ends."

# lobby case
execute if score %in game matches 0 as @s[tag=!out] run function cc:join_event_money

# tagged as "out" case
tellraw @s[tag=out] "You have the \"out\" tag, meaning the game will not teleport you each round. Useful if building during games."
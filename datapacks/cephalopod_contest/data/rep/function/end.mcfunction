tp @e[type=mannequin,tag=this] 0 -1000 0
execute store result score .search UUID0 run data get entity @s UUID[0]
execute store result score .search UUID1 run data get entity @s UUID[1]
execute store result score .search UUID2 run data get entity @s UUID[2]
execute store result score .search UUID3 run data get entity @s UUID[3]
tag @s add this
execute as @e[type=marker,tag=return_pos] if score @s ownerUUID0 = .search UUID0 if score @s ownerUUID1 = .search UUID1 if score @s ownerUUID2 = .search UUID2 if score @s ownerUUID3 = .search UUID3 run tp @a[tag=this] @s
execute as @e[type=marker,tag=return_pos] if score @s ownerUUID0 = .search UUID0 if score @s ownerUUID1 = .search UUID1 if score @s ownerUUID2 = .search UUID2 if score @s ownerUUID3 = .search UUID3 run kill @s
tag @s remove this
execute store result score #prev_gamemode calc run data get entity @s previousPlayerGameType
execute if score #prev_gamemode calc matches 0 run gamemode survival
execute if score #prev_gamemode calc matches 1 run gamemode creative
execute if score #prev_gamemode calc matches 2 run gamemode adventure
execute if score #prev_gamemode calc matches 3 run gamemode spectator
scoreboard players operation %replay game = %replay_players game
scoreboard players add %replay game 1

say rep end
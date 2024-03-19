kill @e[type=armor_stand,tag=this]
execute store result score .search UUID0 run data get entity @s UUID[0]
execute store result score .search UUID1 run data get entity @s UUID[1]
execute store result score .search UUID2 run data get entity @s UUID[2]
execute store result score .search UUID3 run data get entity @s UUID[3]
tag @s add this
execute as @e[type=marker,tag=return_pos] if score @s ownerUUID0 = .search UUID0 if score @s ownerUUID1 = .search UUID1 if score @s ownerUUID2 = .search UUID2 if score @s ownerUUID3 = .search UUID3 run tp @a[tag=this] @s
execute as @e[type=marker,tag=return_pos] if score @s ownerUUID0 = .search UUID0 if score @s ownerUUID1 = .search UUID1 if score @s ownerUUID2 = .search UUID2 if score @s ownerUUID3 = .search UUID3 run kill @s
gamemode adventure
tag @s remove this
scoreboard players operation %replay game = %replay_players game
scoreboard players add %replay game 1

say rep end
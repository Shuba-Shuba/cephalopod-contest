# if no join score, welcome new player
execute unless score @s join matches 0.. run tellraw @s "Welcome to Cephalopod Contest"

scoreboard players set @s join 0
#function shb:dmg/return_health

# get UUID
execute store result score @s UUID0 run data get entity @s UUID[0]
execute store result score @s UUID1 run data get entity @s UUID[1]
execute store result score @s UUID2 run data get entity @s UUID[2]
execute store result score @s UUID3 run data get entity @s UUID[3]

# [CEPHALOPOD CONTEST] run join hook
function cc:join
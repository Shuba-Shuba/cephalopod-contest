# get entity uuid
#execute store result score @s UUID0 run data get entity @s UUID[0]
#execute store result score @s UUID1 run data get entity @s UUID[1]
#execute store result score @s UUID2 run data get entity @s UUID[2]
#execute store result score @s UUID3 run data get entity @s UUID[3]
execute as @e[type=item,distance=..2] store result score @s UUID0 run data get entity @s Thrower[0]
execute as @e[type=item,distance=..2] store result score @s UUID1 run data get entity @s Thrower[1]
execute as @e[type=item,distance=..2] store result score @s UUID2 run data get entity @s Thrower[2]
execute as @e[type=item,distance=..2] store result score @s UUID3 run data get entity @s Thrower[3]

# copy item uuid to system (makes it easier to check from later because no selector will be required)
scoreboard players operation %system UUID0 = @s UUID0
scoreboard players operation %system UUID1 = @s UUID1
scoreboard players operation %system UUID2 = @s UUID2
scoreboard players operation %system UUID3 = @s UUID3

# as all items, check if their UUID scores match the system's UUID scores and if they do, kill the item
execute as @e[type=item,distance=..2] if score @s UUID0 = %system UUID0 if score @s UUID1 = %system UUID1 if score @s UUID2 = %system UUID2 if score @s UUID3 = %system UUID3 run function battle:copycat/return_item
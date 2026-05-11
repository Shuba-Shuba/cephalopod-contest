# suppress cooldown before arrow lands
scoreboard players operation .search UUID0 = @s ownerUUID0
scoreboard players operation .search UUID1 = @s ownerUUID1
scoreboard players operation .search UUID2 = @s ownerUUID2
scoreboard players operation .search UUID3 = @s ownerUUID3
execute as @a[tag=!out,tag=!ded,scores={class=3}] if score @s UUID0 = .search UUID0 if score @s UUID1 = .search UUID1 if score @s UUID2 = .search UUID2 if score @s UUID3 = .search UUID3 run tag @s add suppress_cd
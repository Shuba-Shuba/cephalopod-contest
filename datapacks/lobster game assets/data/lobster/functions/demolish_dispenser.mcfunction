scoreboard players operation .search UUID0 = @s UUID0
scoreboard players operation .search UUID1 = @s UUID1
scoreboard players operation .search UUID2 = @s UUID2
scoreboard players operation .search UUID3 = @s UUID3

execute as @e[type=skeleton,tag=dispenser] if score @s ownerUUID0 = .search UUID0 if score @s ownerUUID1 = .search UUID1 if score @s ownerUUID2 = .search UUID2 if score @s ownerUUID3 = .search UUID3 at @s run function shb:explode_destructive

item replace entity @s hotbar.3 with barrier{display:{Name:'{"text":"On Cooldown","italic":false}'}}
scoreboard players set @s build_dispenser_cd 120
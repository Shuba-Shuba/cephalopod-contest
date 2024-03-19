advancement revoke @s only shb:hit_by_bomb
tag @a remove owner

# get bomb owner
scoreboard players operation .search UUID0 = @s killerUUID0
scoreboard players operation .search UUID1 = @s killerUUID1
scoreboard players operation .search UUID2 = @s killerUUID2
scoreboard players operation .search UUID3 = @s killerUUID3
execute as @a[tag=!out] if score @s UUID0 = .search UUID0 if score @s UUID1 = .search UUID1 if score @s UUID2 = .search UUID2 if score @s UUID3 = .search UUID3 run tag @s add owner

# mark vanilla damage attacker as bomb owner
execute if entity @a[tag=owner] run damage @s 0.01 shb:explosion_mark by @p[tag=owner]
tag @a remove owner
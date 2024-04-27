scoreboard players operation .search UUID0 = @s ownerUUID0
scoreboard players operation .search UUID1 = @s ownerUUID1
scoreboard players operation .search UUID2 = @s ownerUUID2
scoreboard players operation .search UUID3 = @s ownerUUID3

execute as @a[tag=!out,tag=!ded] if score @s UUID0 = .search UUID0 if score @s UUID1 = .search UUID1 if score @s UUID2 = .search UUID2 if score @s UUID3 = .search UUID3 at @s run tag @s add owner
execute if entity @s[type=skeleton] run item replace entity @a[tag=owner,limit=1] hotbar.2 with minecraft:barrier[custom_name='{"text":"On Cooldown","italic":false}']
execute if entity @s[type=skeleton] run scoreboard players set @a[tag=owner,limit=1] build_sentry_cd 30
execute if entity @s[type=skeleton] unless score @s game matches 200.. run title @a[tag=owner,limit=1] actionbar {"text":"SENTRY HIT LAVA","color":"red"}
execute if entity @s[type=skeleton] if score @s game matches 200.. run title @a[tag=owner,limit=1] actionbar {"text":"SENTRY DECAYED","color":"red"}
execute if entity @s[type=creeper] run item replace entity @a[tag=owner,limit=1] hotbar.3 with minecraft:barrier[custom_name='{"text":"On Cooldown","italic":false}']
execute if entity @s[type=creeper] run scoreboard players set @a[tag=owner,limit=1] build_creeper_cd 40
execute if entity @s[type=creeper] run title @a[tag=owner,limit=1] actionbar {"text":"CREEPER HIT LAVA","color":"red"}
tag @a remove owner

kill @s
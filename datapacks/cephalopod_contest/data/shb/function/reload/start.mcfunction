data remove block 0 -64 0 Items
item replace block 0 -64 0 container.0 from entity @s weapon.mainhand
item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand from block 0 -64 0 container.0

advancement revoke @s only shb:reload_gun

data modify storage shb:gun stats set from entity @s equipment.mainhand.components.minecraft:custom_data.stats
execute store result score @s gunid run data get storage shb:gun stats.id
function shb:gun/get_stats

scoreboard players operation @s cd = .drawtime stats
execute if score @s cd matches 0 run scoreboard players operation @s cd = .cd stats

scoreboard players operation @s reload.time = .reload.time stats
scoreboard players operation @s reload.repeat = .reload.mag stats
scoreboard players operation @s reload.repeat /= .reload.per stats

#say reload
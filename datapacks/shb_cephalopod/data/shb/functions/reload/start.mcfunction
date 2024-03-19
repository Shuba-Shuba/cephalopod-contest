advancement revoke @s only shb:reload_gun
advancement revoke @s only shb:reload_gun_carrot

data modify storage shb:gun stats set from entity @s Inventory[{Slot:-106b}].tag.stats
execute store result score @s gunid run data get storage shb:gun stats.id
function shb:gun/get_stats

scoreboard players operation @s cd = .drawtime stats
execute if score @s cd matches 0 run scoreboard players operation @s cd = .cd stats

scoreboard players operation @s reload.time = .reload.time stats
scoreboard players operation @s reload.repeat = .reload.mag stats
scoreboard players operation @s reload.repeat /= .reload.per stats

execute unless score @s offhand_carrot matches 1 run function cc:swap_hands

# say reload
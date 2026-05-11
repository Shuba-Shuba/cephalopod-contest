scoreboard players set .save stats 0

execute store result storage shb:gun stats.ammo.count int 1 run scoreboard players get .ammo.count stats
scoreboard players operation #dmg calc = .ammo.count stats
scoreboard players operation #dmg calc *= 2000 calc
execute store result storage tmp tmp double 0.0005 run scoreboard players operation #dmg calc /= .reload.mag stats

function shb:gun/set_stats_damage with storage tmp

execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{shb:1b}}}} run item modify entity @s weapon.mainhand shb:set_stats
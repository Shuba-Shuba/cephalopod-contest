scoreboard players set .save stats 0

execute store result storage shb:gun stats.ammo.count int 1 run scoreboard players get .ammo.count stats

execute if data entity @s {SelectedItem:{components:{"minecraft:custom_data":{shb:1b}}}} run item modify entity @s weapon.mainhand shb:set_stats
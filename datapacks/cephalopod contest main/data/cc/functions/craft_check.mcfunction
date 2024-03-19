advancement revoke @s only cc:craft_check
data remove entity @e[tag=craft_storage,limit=1,sort=nearest] data.tmp
data modify entity @e[tag=craft_storage,limit=1,sort=nearest] data.tmp set from entity @e[tag=craft_storage,limit=1,sort=nearest] data.craft
execute unless data entity @s SelectedItem run scoreboard players set @s craft2 1
execute unless score #tmp_ended game matches 1 if data entity @s SelectedItem if data entity @e[tag=craft_storage,limit=1,sort=nearest] data.tmp[0] store success score @s craft2 run data modify entity @e[tag=craft_storage,limit=1,sort=nearest] data.tmp[0] set from entity @s SelectedItem.id
execute if score @s craft2 matches 0 unless score #tmp_ended game matches 1 run scoreboard players set %index craft 0
execute if score @s craft2 matches 0 unless score #tmp_ended game matches 1 run function cc:craft_complete
execute unless score #tmp_ended game matches 1 if data entity @s SelectedItem if data entity @e[tag=craft_storage,limit=1,sort=nearest] data.tmp[1] store success score @s craft2 run data modify entity @e[tag=craft_storage,limit=1,sort=nearest] data.tmp[1] set from entity @s SelectedItem.id
execute if score @s craft2 matches 0 unless score #tmp_ended game matches 1 run scoreboard players set %index craft 1
execute if score @s craft2 matches 0 unless score #tmp_ended game matches 1 run function cc:craft_complete
execute unless score #tmp_ended game matches 1 if data entity @s SelectedItem if data entity @e[tag=craft_storage,limit=1,sort=nearest] data.tmp[2] store success score @s craft2 run data modify entity @e[tag=craft_storage,limit=1,sort=nearest] data.tmp[2] set from entity @s SelectedItem.id
execute if score @s craft2 matches 0 unless score #tmp_ended game matches 1 run scoreboard players set %index craft 2
execute if score @s craft2 matches 0 unless score #tmp_ended game matches 1 run function cc:craft_complete
scoreboard players reset #tmp_ended game
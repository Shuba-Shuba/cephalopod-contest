execute store result score .durability calc run data get entity @s SelectedItem.tag.Damage
scoreboard players set .metal calc 35
scoreboard players operation .metal calc -= .durability calc
scoreboard players operation .metal calc /= 4 calc
title @s actionbar ["+",{"score":{"name":".metal","objective":"calc"}}," metal"]
playsound minecraft:item.shield.break master @s ~ ~ ~ 1 1
execute store result score @s arrow_count run clear @s iron_ingot 0
execute if score @s arrow_count matches 0 run item replace entity @s hotbar.8 with iron_ingot
execute if score @s arrow_count matches 0 run scoreboard players remove .metal calc 1
execute if score @s arrow_count matches 40.. run scoreboard players set .metal calc 0
function lobster:eng_scrap_metal
clear @s golden_pickaxe{tnt:18b}
scoreboard players set @s metal_mine_cd 100
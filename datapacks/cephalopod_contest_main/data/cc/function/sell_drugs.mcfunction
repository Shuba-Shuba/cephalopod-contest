advancement revoke @s only cc:sell_drugs
execute store result score .type drugs run data get entity @s SelectedItem.components.minecraft:custom_model_data
execute store result score .count drugs run data get entity @s SelectedItem.count
scoreboard players operation .value drugs = .count drugs
execute if score .type drugs matches 101 run scoreboard players operation .value drugs *= #WEED money
execute if score .type drugs matches 102 run scoreboard players operation .value drugs *= #JOINT money
execute if score .type drugs matches 103 run scoreboard players operation .value drugs *= #COKE money
execute if score .type drugs matches 104 run scoreboard players operation .value drugs *= #BTH money
scoreboard players operation @s money += .value drugs
tellraw @s [{"text":"Sold ","color":"green"},{"score":{"name":".count","objective":"drugs"}}," drug(s) for $",{"score":{"name":".value","objective":"drugs"}}]
item replace entity @s weapon.mainhand with air
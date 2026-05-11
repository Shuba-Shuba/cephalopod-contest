advancement revoke @s only cc:sell_drugs
execute store result score .type drugs run data get entity @s SelectedItem.components.minecraft:custom_data.drugs
execute store result score .count drugs run data get entity @s SelectedItem.count
scoreboard players operation .value drugs = .count drugs
execute if score .type drugs matches 1 run scoreboard players operation .value drugs *= #WEED money
execute if score .type drugs matches 2 run scoreboard players operation .value drugs *= #JOINT money
execute if score .type drugs matches 3 run scoreboard players operation .value drugs *= #COKE money
execute if score .type drugs matches 4 run scoreboard players operation .value drugs *= #BTH money
scoreboard players operation @s money += .value drugs
tellraw @s [{text:"Sold ",color:"green"},{score:{name:".count",objective:"drugs"}}," drug(s) for $",{score:{name:".value",objective:"drugs"}}]
item replace entity @s weapon.mainhand with air
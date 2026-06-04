# @s = player rightclicking
execute unless score .start board_roll matches 1 run return run tellraw @s {text:"You can't use items after rolling!"}

execute if data entity @s SelectedItem.components.minecraft:custom_data.rolls run return run function cc:board/roll with entity @s SelectedItem.components.minecraft:custom_data

function cc:board/item/use/by_id with entity @s SelectedItem.components.minecraft:custom_data
# @s = player rightclicking
execute unless score .start board_roll matches 1 run return run tellraw @s {text:"You can't use items after rolling!"}

execute if data entity @s SelectedItem.components.minecraft:custom_data.rolls run return run function cc:board/roll

# get item id if player hasn't rolled yet
scoreboard players reset .item game
execute store result score .item game run data get entity @s SelectedItem.components.minecraft:custom_data.board

# item effect for corresponding item id
execute if score .item game matches 2 run function cc:board/item/use/weed
execute if score .item game matches 3 run function cc:board/item/use/coke
execute if score .item game matches 4 run function cc:board/item/use/glue
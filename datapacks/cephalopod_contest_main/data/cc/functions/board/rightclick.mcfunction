# @s = player rightclicking

# get item id if player hasn't rolled yet
scoreboard players reset .item game
execute if score .start board_roll matches 1 store result score .item game run data get entity @s SelectedItem.components.minecraft:custom_data.board
execute unless score .start board_roll matches 1 run tellraw @s {"text":"You can't use items after rolling!"}

# item effect for corresponding item id
execute if score .item game matches 1 run function cc:board/roll
execute if score .item game matches 100 run function cc:board/use/weed
execute if score .item game matches 101 run function cc:board/use/coke
execute if score .item game matches 200 run function cc:board/use/glue
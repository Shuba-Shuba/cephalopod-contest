# get card data
execute store result score .id deck run data get entity @s Item.tag.uno.id
execute store result score .color deck run data get entity @s Item.tag.uno.color

# compare card data against last played card, must be matching id, matching color, wild card (color=0), or draw card trigger (color=-1)
scoreboard players set .bool deck 0
execute if score .id deck = .prev_id deck run scoreboard players set .bool deck 1
execute if score .color deck = .prev_color deck run scoreboard players set .bool deck 1
execute if score .color deck matches 0 run scoreboard players set .bool deck 1
execute if score .color deck matches -1 run scoreboard players set .bool deck 2

# kill card if test passed
execute if score .bool deck matches 1 run function cc:uno/kill_card
execute if score .bool deck matches 2 run kill @s
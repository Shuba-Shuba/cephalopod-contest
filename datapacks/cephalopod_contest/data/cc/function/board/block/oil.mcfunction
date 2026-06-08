execute as @p[tag=this] run function cc:board/block/purple
execute as @p[tag=this] run function cc:board/block/purple
execute if entity @p[tag=this] run tellraw @a ["",{selector:"@p[tag=this]"}," stepped into an oil trap!"]
execute unless entity @p[tag=this] run tellraw @a ["An offline player stepped into an oil trap!"]

# track initial stepper to remove trap at right time
execute as @n[type=item_display,tag=board_oil_trap] unless score @s board_turn matches 0.. run scoreboard players operation @s board_turn = @p[tag=this] board_turn
tag @p[tag=this] add oiled
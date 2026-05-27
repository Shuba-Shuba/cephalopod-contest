# @s = player
# copies player's items stored on their board item_display to their inventory
execute as @e[type=item_display,tag=board_player] if score @s board_turn = .i board_turn run data modify storage tmp data set from entity @s data
# hotbar & offhand
# can be extended to include armor same way as offhand
data modify block 0 -64 0 Items set from storage tmp data.hotbar
item replace entity @s weapon.offhand from block 0 -64 0 container.26
item replace block 0 -64 0 container.26 with air
loot give @s mine 0 -64 0 air[custom_data={drop_contents:1}]
# inventory
data modify block 0 -64 0 Items set from storage tmp data.inventory
loot give @s mine 0 -64 0 air[custom_data={drop_contents:1}]
# clean up
data remove storage tmp data
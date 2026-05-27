# inventory
data remove block 0 -64 0 Items
loot insert 0 -64 0 loot cc:get_inventory
data modify entity @n[type=item_display,tag=this] data.inventory set from block 0 -64 0 Items
# hotbar & offhand
# can be extended to include armor same way as offhand
data remove block 0 -64 0 Items
loot insert 0 -64 0 loot cc:get_hotbar
item replace block 0 -64 0 container.26 from entity @s weapon.offhand
data modify entity @n[type=item_display,tag=this] data.hotbar set from block 0 -64 0 Items
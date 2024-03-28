# @s = player
# copies player's items stored on their board marker to their inventory

# idk if macro magic could speed this up, but performance is unimportant so whatever
# also just saying, having direct player NBT editing would make this entire function possible in ONE SHORT COMMAND

## hotbar + first 2 rows of inventory
# copy marker's data to shulker box
data remove block 0 -64 0 Items
execute as @e[type=marker,tag=board_player] if score @s board_turn = .i board_turn run data modify block 0 -64 0 Items set from entity @s data.Inventory
# copy items from shulker box into inventory
item replace entity @s container.0 from block 0 -64 0 container.0
item replace entity @s container.1 from block 0 -64 0 container.1
item replace entity @s container.2 from block 0 -64 0 container.2
item replace entity @s container.3 from block 0 -64 0 container.3
item replace entity @s container.4 from block 0 -64 0 container.4
item replace entity @s container.5 from block 0 -64 0 container.5
item replace entity @s container.6 from block 0 -64 0 container.6
item replace entity @s container.7 from block 0 -64 0 container.7
item replace entity @s container.8 from block 0 -64 0 container.8
item replace entity @s container.9 from block 0 -64 0 container.9
item replace entity @s container.10 from block 0 -64 0 container.10
item replace entity @s container.11 from block 0 -64 0 container.11
item replace entity @s container.12 from block 0 -64 0 container.12
item replace entity @s container.13 from block 0 -64 0 container.13
item replace entity @s container.14 from block 0 -64 0 container.14
item replace entity @s container.15 from block 0 -64 0 container.15
item replace entity @s container.16 from block 0 -64 0 container.16
item replace entity @s container.17 from block 0 -64 0 container.17
item replace entity @s container.18 from block 0 -64 0 container.18
item replace entity @s container.19 from block 0 -64 0 container.19
item replace entity @s container.20 from block 0 -64 0 container.20
item replace entity @s container.21 from block 0 -64 0 container.21
item replace entity @s container.22 from block 0 -64 0 container.22
item replace entity @s container.23 from block 0 -64 0 container.23
item replace entity @s container.24 from block 0 -64 0 container.24
item replace entity @s container.25 from block 0 -64 0 container.25
item replace entity @s container.26 from block 0 -64 0 container.26

## 3rd row of inventory + armor
# we need to do more work to get the last inventory row and armor because their slot numbers are above 26, which don't exist in containers
# copy marker's data onto storage
execute as @e[type=marker,tag=board_player] if score @s board_turn = .i board_turn run data modify storage tmp Inventory set from entity @s data.Inventory
# translate slot numbers so that they'll fit in the box
data modify storage tmp Inventory[{Slot:27b}].Slot set value 0b
data modify storage tmp Inventory[{Slot:28b}].Slot set value 1b
data modify storage tmp Inventory[{Slot:29b}].Slot set value 2b
data modify storage tmp Inventory[{Slot:30b}].Slot set value 3b
data modify storage tmp Inventory[{Slot:31b}].Slot set value 4b
data modify storage tmp Inventory[{Slot:32b}].Slot set value 5b
data modify storage tmp Inventory[{Slot:33b}].Slot set value 6b
data modify storage tmp Inventory[{Slot:34b}].Slot set value 7b
data modify storage tmp Inventory[{Slot:35b}].Slot set value 8b
data modify storage tmp Inventory[{Slot:100b}].Slot set value 9b
data modify storage tmp Inventory[{Slot:101b}].Slot set value 10b
data modify storage tmp Inventory[{Slot:102b}].Slot set value 11b
data modify storage tmp Inventory[{Slot:103b}].Slot set value 12b
# copy storage data to shulker box
data modify block 0 -64 0 Items set from storage tmp Inventory
# copy items from shulker box into inventory
item replace entity @s container.27 from block 0 -64 0 container.0
item replace entity @s container.28 from block 0 -64 0 container.1
item replace entity @s container.29 from block 0 -64 0 container.2
item replace entity @s container.30 from block 0 -64 0 container.3
item replace entity @s container.31 from block 0 -64 0 container.4
item replace entity @s container.32 from block 0 -64 0 container.5
item replace entity @s container.33 from block 0 -64 0 container.6
item replace entity @s container.34 from block 0 -64 0 container.7
item replace entity @s container.35 from block 0 -64 0 container.8
item replace entity @s armor.head from block 0 -64 0 container.9
item replace entity @s armor.chest from block 0 -64 0 container.10
item replace entity @s armor.legs from block 0 -64 0 container.11
item replace entity @s armor.feet from block 0 -64 0 container.12
# clean up
data remove storage tmp Inventory
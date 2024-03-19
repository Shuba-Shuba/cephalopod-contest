execute if entity @a[tag=debug] run say offhand cor

clear @s carrot_on_a_stick{CustomModelData:199}
tellraw @a[tag=debug] ["debug bef: ",{"nbt":"Inventory[{Slot:-106b}]","entity":"@s","color":"red"}]
execute if data entity @s Inventory[{Slot:-106b}] run function lobster:swap_hands
item replace entity @s weapon.offhand with carrot_on_a_stick{CustomModelData:199,display:{Name:'""'}}
tellraw @a[tag=debug] ["debug aft: ",{"nbt":"Inventory[{Slot:-106b}]","entity":"@s","color":"aqua"}]

execute if entity @a[tag=debug] run say /offhand cor
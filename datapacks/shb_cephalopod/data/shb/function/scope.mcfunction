data modify storage shb:scope model set string entity @s SelectedItem.components.minecraft:item_model 9
function shb:scope_macro with storage shb:scope
scoreboard players set @s scope 1

#execute unless predicate shb:swift_sneak run clear @s chainmail_leggings[custom_data={shb:1b}]
#execute unless data entity @s Inventory[{Slot:101b}] run item replace entity @s armor.legs with minecraft:chainmail_leggings[custom_data={shb:1b}]
#execute unless predicate shb:swift_sneak run item modify entity @s armor.legs shb:swift_sneak
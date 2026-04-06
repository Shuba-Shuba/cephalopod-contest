data modify storage shb:scope model set string entity @s SelectedItem.components.minecraft:item_model 15
function shb:unscope_macro with storage shb:scope
scoreboard players set @s scope 0

#clear @s chainmail_leggings[custom_data={shb:1b}]
#execute if predicate shb:swift_sneak run item modify entity @s armor.legs shb:swift_sneak_return
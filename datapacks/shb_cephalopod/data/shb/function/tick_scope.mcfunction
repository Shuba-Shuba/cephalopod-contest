attribute @s minecraft:generic.movement_speed modifier add scope -0.07 add_value

execute unless predicate shb:swift_sneak_borrowing run clear @s chainmail_leggings[custom_data~{shb:1b}]
execute unless items entity @s armor.legs * run item replace entity @s armor.legs with minecraft:chainmail_leggings[enchantments={"minecraft:binding_curse":1},attribute_modifiers=[{operation:"add_value",type:"generic.armor",amount:0,slot:"legs",id:"no_armor"}],custom_data={shb:1b}]
execute if predicate shb:swift_sneak_borrowing run stopsound @a[distance=..32] player minecraft:item.armor.equip_chain
execute unless predicate shb:swift_sneak run item modify entity @s armor.legs shb:swift_sneak
attribute @s minecraft:generic.movement_speed modifier add 6-9-4-2-0 scope -0.07 add

execute unless predicate shb:swift_sneak_borrowing run clear @s chainmail_leggings{shb:1b}
execute unless data entity @s Inventory[{Slot:101b}] run item replace entity @s armor.legs with chainmail_leggings{shb:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:0,Operation:0,UUID:[I;-32068143,2112573392,-1594933488,2047008117],Slot:"legs"}]}
execute if predicate shb:swift_sneak_borrowing run stopsound @a[distance=..32] player minecraft:item.armor.equip_chain
execute unless predicate shb:swift_sneak run item modify entity @s armor.legs shb:swift_sneak
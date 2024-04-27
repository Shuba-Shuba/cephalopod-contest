attribute @s minecraft:generic.movement_speed modifier remove 6-9-4-2-0

clear @s chainmail_leggings[custom_data~{shb:1b}]
execute if predicate shb:swift_sneak run item modify entity @s armor.legs shb:swift_sneak_return
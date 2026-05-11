item modify entity @s weapon.mainhand shb:unscope
scoreboard players set @s scope 0

#clear @s chainmail_leggings[custom_data={shb:1b}]
#execute if predicate shb:swift_sneak run item modify entity @s armor.legs shb:swift_sneak_return
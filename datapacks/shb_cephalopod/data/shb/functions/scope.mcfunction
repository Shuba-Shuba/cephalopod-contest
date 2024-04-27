execute store result storage shb:scope cmd int 1 run scoreboard players add @s cmd 100
item modify entity @s weapon.mainhand shb:scope
scoreboard players set @s scope 1

#execute unless predicate shb:swift_sneak run clear @s chainmail_leggings[custom_data={shb:1b}]
#execute unless data entity @s Inventory[{Slot:101b}] run item replace entity @s armor.legs with minecraft:chainmail_leggings[custom_data={shb:1b}]
#execute unless predicate shb:swift_sneak run item modify entity @s armor.legs shb:swift_sneak
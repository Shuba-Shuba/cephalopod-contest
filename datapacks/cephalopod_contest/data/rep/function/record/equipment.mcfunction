tag @n[type=marker,tag=init] add equipment_update
data modify entity @n[type=marker,tag=init] data.equipment set value {}
data modify entity @n[type=marker,tag=init] data.equipment set from entity @s equipment
data modify entity @n[type=marker,tag=init] data.equipment.mainhand set from entity @s SelectedItem
execute if entity @n[type=marker,tag=anchor_current,tag=sneaking] run return run data modify entity @s pose set value "crouching"
execute if entity @n[type=marker,tag=anchor_current,tag=swimming] run return run data modify entity @s pose set value "swimming"
data modify entity @s pose set value "standing"
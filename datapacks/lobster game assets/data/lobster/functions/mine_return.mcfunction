#execute as @a[tag=miner] at @s if entity @e[type=item,distance=..7] run say item exists
execute as @a[tag=miner] at @s as @e[type=item,distance=..7] run data merge entity @s {PickupDelay:0s}
execute as @a[tag=miner] at @s run tp @e[type=item,distance=..7] @s
tag @a remove miner
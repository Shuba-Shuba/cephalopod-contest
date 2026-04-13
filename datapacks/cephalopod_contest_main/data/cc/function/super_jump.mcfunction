# cooldown & remove item
scoreboard players set @s jump_cd 120
clear @s blaze_powder[custom_data={tnt:3b}]

# launch forward
tp @s @s
execute rotated ~ -40 positioned ^ ^ ^-1 facing entity @s feet run function shb:shoot/gravity
scoreboard players set @s gardener_jump 10

# fx
scoreboard players set @s jump_time 10
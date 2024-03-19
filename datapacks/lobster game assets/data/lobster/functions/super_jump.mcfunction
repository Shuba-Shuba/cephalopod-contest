# cooldown & remove item
scoreboard players set @s jump_cd 120
clear @s blaze_powder{tnt:3b}

# launch forward
scoreboard players set $strength delta.api.launch 15000
tp @s @s
execute rotated ~ -40 run function delta:api/launch_looking
scoreboard players set @s gardener_jump 10

# fx
scoreboard players set @s jump_time 10
playsound minecraft:entity.blaze.shoot master @a[distance=..80] ~ ~ ~ 1 1.5 1
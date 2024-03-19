clear @s
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow,nbt={inGround:1b}]
effect clear @s
tag @s remove ender_tp
tag @s remove ender
scoreboard players set @s Kit_ID 0
attribute @s minecraft:generic.max_health base set 20
effect give @s minecraft:saturation 80 255 true
scoreboard players set @s Deaths_3 0
#tellraw @s "Successfully cleared kit."

scoreboard players set @s offhand_carrot 0
scoreboard players set @s max_arrow_time 0
scoreboard players set @s max_arrows 0
scoreboard players set @s arrow_time 0
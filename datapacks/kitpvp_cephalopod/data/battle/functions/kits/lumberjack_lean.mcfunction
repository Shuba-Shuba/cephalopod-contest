# prepare the player for kit
scoreboard players set @s Kit_ID 33
attribute @s minecraft:generic.max_health base set 6
tellraw @s "Now Using: Tainted Lumberjack"

# give the player the kit contents
give @s minecraft:netherite_axe[enchantments={sharpness:5},unbreakable={}]
damage @s 1
effect give @s speed infinite 0 true
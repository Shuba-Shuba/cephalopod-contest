# prepare the player for kit
scoreboard players set @s Kit_ID 33
attribute @s minecraft:generic.max_health base set 6
tellraw @s "Now Using: Tainted Lumberjack"

# give the player the kit contents
give @s netherite_axe{Enchantments:[{id:"sharpness",lvl:5}],Unbreakable:1b}
damage @s 1
effect give @s speed infinite 0 true
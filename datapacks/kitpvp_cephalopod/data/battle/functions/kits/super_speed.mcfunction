# prepare the player for kit
scoreboard players set @s Kit_ID 38
attribute @s minecraft:generic.max_health base set 12
tellraw @s "Now Using: Tainted Spy"

# give the player the kit contents
effect give @s instant_damage 1 0 true
effect give @s speed infinite 4 true
effect give @s jump_boost infinite 2 true
effect give @s invisibility infinite 0 true
give @s minecraft:wooden_hoe[unbreakable={},enchantments={fire_aspect:1,sharpness:1}]
give @s cooked_beef 5
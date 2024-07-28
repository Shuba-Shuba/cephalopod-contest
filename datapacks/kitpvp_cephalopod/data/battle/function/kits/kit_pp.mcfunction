# prepare the player for kit
scoreboard players set @s Kit_ID 19
tellraw @s "Now Using: Kit PP"

# give the player the kit contents
give @s minecraft:stick[custom_name='"The Dildo"',enchantments={sharpness:7,knockback:1},attribute_modifiers=[{operation:"add_value",type:"generic.knockback_resistance",amount:1,slot:"mainhand",id:"no_kb"}]]
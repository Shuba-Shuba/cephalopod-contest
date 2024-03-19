# prepare the player for kit
scoreboard players set @s Kit_ID 19
tellraw @s "Now Using: Kit PP"

# give the player the kit contents
give @s stick{display:{Name:'"The Dildo"'},Enchantments:[{id:"sharpness",lvl:7},{id:"knockback",lvl:1}],AttributeModifiers:[{Name:"generic.knockback_resistance",AttributeName:"generic.knockback_resistance",Amount:1,Operation:0,Slot:"mainhand",UUID:[I;291028301,-201935383,301841948,-274917482]}]}
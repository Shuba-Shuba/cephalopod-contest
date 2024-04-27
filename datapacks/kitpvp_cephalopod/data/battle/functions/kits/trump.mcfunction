# prepare the player for kit
scoreboard players set @s Kit_ID 36
tellraw @s "Now Using: Donald Trump"

# give the player the kit contents
give @s minecraft:petrified_oak_slab[custom_name='{"text":"Build Floor [3x3]","italic":false}',custom_data={nbk:1b}]
give @s minecraft:oak_planks[custom_name='{"text":"Build Wall [3x3]","italic":false}',custom_data={nbk:1b}]
function shb:give/carrot/pistol_bad
give @s minecraft:golden_apple[custom_name='{"text":"Fox News","italic":false}'] 3
item replace entity @s armor.head with minecraft:leather_helmet[unbreakable={}]

scoreboard players set @s offhand_carrot 1
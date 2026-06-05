# prepare the player for kit
scoreboard players set @s Kit_ID 36
tellraw @s "Now Using: Donald Trump"

# give the player the kit contents
give @s minecraft:carrot_on_a_stick[item_model=petrified_oak_slab,item_name={text:"Build Floor [3x3]",italic:false}]
give @s minecraft:carrot_on_a_stick[item_model=oak_planks,item_name={text:"Build Wall [3x3]",italic:false}]
function shb:give/pistol_bad
give @s minecraft:golden_apple[item_name={text:"Fox News",italic:false}] 3
item replace entity @s armor.head with minecraft:leather_helmet[unbreakable={}]

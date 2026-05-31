# prepare the player for kit
scoreboard players set @s Kit_ID 23
tellraw @s "Now Using: Engineer"

# give the player the kit contents
give @s minecraft:carrot_on_a_stick[item_model=crafting_table,item_name=[{text:"[",color:"white",italic:false},{keybind:"key.use"},"] Build Sentry (20 Metal)"]] 1
give @s minecraft:carrot_on_a_stick[item_model=anvil,item_name=[{text:"[",color:"white",italic:false},{keybind:"key.use"},"] Upgrade Sentry (12 Metal)"]] 1
give @s minecraft:carrot_on_a_stick[item_model=beacon,item_name=[{text:"[",color:"white",italic:false},{keybind:"key.use"},"] Repair Sentry (8 Metal)"]] 1
give @s minecraft:carrot_on_a_stick[item_model=book,item_name=[{text:"[",color:"white",italic:false},{keybind:"key.use"},"] Buy Random Item (10 Metal)"]] 1
give @s minecraft:carrot_on_a_stick[item_model=tnt,item_name=[{text:"[",color:"white",italic:false},{keybind:"key.use"},"] Destroy Sentry (Refunds 10 Metal)"]] 1
give @s iron_ingot 20
item replace entity @s armor.head with minecraft:golden_helmet[item_name=[{text:"Hardhat",color:"white",italic:false}],attribute_modifiers=[{operation:"add_value",type:"armor",amount:2,slot:"head",id:"armor"}]]

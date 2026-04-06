# prepare the player for kit
scoreboard players set @s Kit_ID 23
tellraw @s "Now Using: Engineer"

# give the player the kit contents
give @s minecraft:crafting_table[custom_name=[{text:"[",color:"white",italic:false},{"keybind":"key.use"},"] Build Sentry (20 Metal)"],custom_data={nbk:1b}] 1
give @s minecraft:anvil[custom_name=[{text:"[",color:"white",italic:false},{"keybind":"key.use"},"] Upgrade Sentry (12 Metal)"],custom_data={nbk:1b}] 1
give @s minecraft:beacon[custom_name=[{text:"[",color:"white",italic:false},{"keybind":"key.use"},"] Repair Sentry (8 Metal)"],custom_data={nbk:1b}] 1
give @s minecraft:book[custom_name=[{text:"[",color:"white",italic:false},{"keybind":"key.use"},"] Buy Random Item (10 Metal)"],custom_data={nbk:1b}] 1
give @s minecraft:tnt[custom_name=[{text:"[",color:"white",italic:false},{"keybind":"key.use"},"] Destroy Sentry (Refunds 10 Metal)"],custom_data={nbk:1b}] 1
give @s iron_ingot 20
item replace entity @s armor.head with minecraft:golden_helmet[custom_name=[{text:"Hardhat",color:"white",italic:false}],attribute_modifiers=[{operation:"add_value",type:"armor",amount:2,slot:"head",id:"armor"}]]

scoreboard players set @s offhand_carrot 1
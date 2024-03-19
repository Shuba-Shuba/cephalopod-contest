# prepare the player for kit
scoreboard players set @s Kit_ID 23
tellraw @s "Now Using: Engineer"

# give the player the kit contents
give @s crafting_table{nbk:1b,display:{Name:'[{"text":"[","color":"white","italic":false},{"keybind":"key.use"},"] Build Sentry (20 Metal)"]'}} 1
give @s anvil{nbk:1b,display:{Name:'[{"text":"[","color":"white","italic":false},{"keybind":"key.use"},"] Upgrade Sentry (12 Metal)"]'}} 1
give @s beacon{nbk:1b,display:{Name:'[{"text":"[","color":"white","italic":false},{"keybind":"key.use"},"] Repair Sentry (8 Metal)"]'}} 1
give @s book{nbk:1b,display:{Name:'[{"text":"[","color":"white","italic":false},{"keybind":"key.use"},"] Buy Random Item (10 Metal)"]'}} 1
give @s tnt{nbk:1b,display:{Name:'[{"text":"[","color":"white","italic":false},{"keybind":"key.use"},"] Destroy Sentry (Refunds 10 Metal)"]'}} 1
give @s iron_ingot 20
item replace entity @s armor.head with golden_helmet{display:{Name:'[{"text":"Hardhat","color":"white","italic":false}]'},HideFlags:6,CustomModelData:11001,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:2,Operation:0,UUID:[I;148970657,-1037679796,-1149751977,-1123256785],Slot:"head"}]}

scoreboard players set @s offhand_carrot 1
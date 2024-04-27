# prepare the player for kit

clear @s
kill @e[type=minecraft:item]
kill @e[type=minecraft:arrow,nbt={inGround:1}]
kill @e[type=potion,x=22,dx=14,z=-8,dz=14,y=23,dy=5]
effect clear @s
tag @s remove ender_tp
tag @s remove ender
scoreboard players set @s Kit_ID 24
attribute @s minecraft:generic.max_health base set 20
effect give @s minecraft:saturation 80 255 true
scoreboard players set @s Deaths_3 0
tellraw @s "Successfully selected kit."

# give the player the kit contents

xp add @s 99999999
item replace entity @s armor.head with minecraft:leather_helmet[custom_name='{"text":"Amirite Helmet","italic":false}',dyed_color={rgb:16711680,show_in_tooltip:0b},unbreakable={},custom_model_data=101,attribute_modifiers=[{operation:"add_value",type:"generic.armor",amount:5,slot:"head",name:"generic.armor",uuid:[I;893020548,571952309,-2134709233,-1232127686]},{operation:"add_value",type:"generic.armor_toughness",amount:4,slot:"head",name:"generic.armor_toughness",uuid:[I;-2068056514,1172849043,-2073511788,-102849535]},{operation:"add_value",type:"generic.max_health",amount:2,slot:"head",name:"generic.max_health",uuid:[I;184872910,-1530445206,-1747054379,-1289062196]},{operation:"add_value",type:"generic.knockback_resistance",amount:0.1d,slot:"head",name:"generic.knockback_resistance",uuid:[I;642662239,1703562303,-1121242155,-581007477]}]]
item replace entity @s armor.chest with minecraft:leather_chestplate[custom_name='{"text":"Amirite Chestplate","italic":false}',dyed_color={rgb:16711680,show_in_tooltip:0b},unbreakable={},custom_model_data=101,attribute_modifiers=[{operation:"add_value",type:"generic.armor",amount:11,slot:"chest",name:"generic.armor",uuid:[I;-2022919634,1411401373,-1818563324,1984282403]},{operation:"add_value",type:"generic.armor_toughness",amount:4,slot:"chest",name:"generic.armor_toughness",uuid:[I;-172461383,-2143600577,-1660968303,-682201543]},{operation:"add_value",type:"generic.max_health",amount:2,slot:"chest",name:"generic.max_health",uuid:[I;899767807,-281981988,-2086299838,306113644]},{operation:"add_value",type:"generic.knockback_resistance",amount:0.1d,slot:"chest",name:"generic.knockback_resistance",uuid:[I;62968646,716916370,-1713814109,226713399]}]]
item replace entity @s armor.legs with minecraft:leather_leggings[custom_name='{"text":"Amirite Leggings","italic":false}',dyed_color={rgb:16711680,show_in_tooltip:0b},unbreakable={},custom_model_data=101,attribute_modifiers=[{operation:"add_value",type:"generic.armor",amount:9,slot:"legs",name:"generic.armor",uuid:[I;-1933941437,1824344369,-1478705052,-1705979964]},{operation:"add_value",type:"generic.armor_toughness",amount:4,slot:"legs",name:"generic.armor_toughness",uuid:[I;1089694581,-502444594,-1117094827,65310974]},{operation:"add_value",type:"generic.max_health",amount:2,slot:"legs",name:"generic.max_health",uuid:[I;1484107360,-814264481,-2024163179,-824955455]},{operation:"add_value",type:"generic.knockback_resistance",amount:0.1d,slot:"legs",name:"generic.knockback_resistance",uuid:[I;-1797351478,-881111620,-2002730983,-818150325]}]]
item replace entity @s armor.feet with minecraft:leather_boots[custom_name='{"text":"Amirite Boots","italic":false}',dyed_color={rgb:16711680,show_in_tooltip:0b},unbreakable={},custom_model_data=101,attribute_modifiers=[{operation:"add_value",type:"generic.armor",amount:5,slot:"feet",name:"generic.armor",uuid:[I;-1657431237,-1284157992,-1754294240,1834576829]},{operation:"add_value",type:"generic.armor_toughness",amount:4,slot:"feet",name:"generic.armor_toughness",uuid:[I;1859018821,-1313718130,-1561484405,-950345354]},{operation:"add_value",type:"generic.max_health",amount:2,slot:"feet",name:"generic.max_health",uuid:[I;1631079178,1550468421,-1097899754,610051119]},{operation:"add_value",type:"generic.knockback_resistance",amount:0.1d,slot:"feet",name:"generic.knockback_resistance",uuid:[I;-1071526778,279068900,-1429084075,182310570]}]]
give @s minecraft:iron_sword[custom_name='{"text":"Ancient Knife","color":"aqua","italic":false}',lore=['{"text":" ","italic":false}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 11.5 Attack Damage","color":"dark_green","italic":false}','{"text":" 2.4 Attack Speed","color":"dark_green","italic":false}'],unbreakable={},enchantments={"minecraft:sharpness":10},attribute_modifiers={modifiers:[{operation:"add_value",type:"generic.attack_speed",amount:-1.6d,slot:"mainhand",name:"generic.attack_speed",uuid:[I;-1699406967,-803780089,-2054509018,932138723]}],show_in_tooltip:0b},custom_data={AbilityRPG:"011"}]
function sp:give/pistol
function sp:give/shotgun
function sp:give/rocket
function sp:give/archers_bane
function sp:give/musket
function sp:give/rifle
function sp:give/throwable_axe
function sp:give/minigun
function sp:give/sniper
function sp:give/portal_gun
function sp:give/rapid_rocket
function sp:give/ultimate_ar
give @s enchanted_golden_apple 64
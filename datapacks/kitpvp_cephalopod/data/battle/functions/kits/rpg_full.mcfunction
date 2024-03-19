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
item replace entity @s armor.head with leather_helmet{display:{Name:'{"text":"Amirite Helmet","italic":false}',color:16711680},HideFlags:64,Unbreakable:1b,CustomModelData:101,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;893020548,571952309,-2134709233,-1232127686],Slot:"head"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:4,Operation:0,UUID:[I;-2068056514,1172849043,-2073511788,-102849535],Slot:"head"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:2,Operation:0,UUID:[I;184872910,-1530445206,-1747054379,-1289062196],Slot:"head"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;642662239,1703562303,-1121242155,-581007477],Slot:"head"}]}
item replace entity @s armor.chest with leather_chestplate{display:{Name:'{"text":"Amirite Chestplate","italic":false}',color:16711680},HideFlags:64,Unbreakable:1b,CustomModelData:101,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:11,Operation:0,UUID:[I;-2022919634,1411401373,-1818563324,1984282403],Slot:"chest"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:4,Operation:0,UUID:[I;-172461383,-2143600577,-1660968303,-682201543],Slot:"chest"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:2,Operation:0,UUID:[I;899767807,-281981988,-2086299838,306113644],Slot:"chest"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;62968646,716916370,-1713814109,226713399],Slot:"chest"}]}
item replace entity @s armor.legs with leather_leggings{display:{Name:'{"text":"Amirite Leggings","italic":false}',color:16711680},HideFlags:64,Unbreakable:1b,CustomModelData:101,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:9,Operation:0,UUID:[I;-1933941437,1824344369,-1478705052,-1705979964],Slot:"legs"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:4,Operation:0,UUID:[I;1089694581,-502444594,-1117094827,65310974],Slot:"legs"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:2,Operation:0,UUID:[I;1484107360,-814264481,-2024163179,-824955455],Slot:"legs"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;-1797351478,-881111620,-2002730983,-818150325],Slot:"legs"}]}
item replace entity @s armor.feet with leather_boots{display:{Name:'{"text":"Amirite Boots","italic":false}',color:16711680},HideFlags:64,Unbreakable:1b,CustomModelData:101,AttributeModifiers:[{AttributeName:"generic.armor",Name:"generic.armor",Amount:5,Operation:0,UUID:[I;-1657431237,-1284157992,-1754294240,1834576829],Slot:"feet"},{AttributeName:"generic.armor_toughness",Name:"generic.armor_toughness",Amount:4,Operation:0,UUID:[I;1859018821,-1313718130,-1561484405,-950345354],Slot:"feet"},{AttributeName:"generic.max_health",Name:"generic.max_health",Amount:2,Operation:0,UUID:[I;1631079178,1550468421,-1097899754,610051119],Slot:"feet"},{AttributeName:"generic.knockback_resistance",Name:"generic.knockback_resistance",Amount:0.1,Operation:0,UUID:[I;-1071526778,279068900,-1429084075,182310570],Slot:"feet"}]}
give @s iron_sword{display:{Name:'{"text":"Ancient Knife","color":"aqua","italic":false}',Lore:['{"text":" ","italic":false}','{"text":"When in Main Hand:","color":"gray","italic":false}','{"text":" 11.5 Attack Damage","color":"dark_green","italic":false}','{"text":" 2.4 Attack Speed","color":"dark_green","italic":false}']},HideFlags:2,Unbreakable:1b,AbilityRPG:011,Enchantments:[{id:"minecraft:sharpness",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.attack_speed",Name:"generic.attack_speed",Amount:-1.6,Operation:0,UUID:[I;-1699406967,-803780089,-2054509018,932138723],Slot:"mainhand"}]}
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
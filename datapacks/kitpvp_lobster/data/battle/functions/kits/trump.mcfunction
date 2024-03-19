# prepare the player for kit
scoreboard players set @s Kit_ID 36
tellraw @s "Now Using: Donald Trump"

# give the player the kit contents
give @s petrified_oak_slab{nbk:1b,display:{Name:'{"text":"Build Floor [3x3]","italic":false}'}}
give @s oak_planks{nbk:1b,display:{Name:'{"text":"Build Wall [3x3]","italic":false}'}}
function shb:give/carrot/pistol_bad
give @s golden_apple{display:{Name:'{"text":"Fox News","italic":false}'}} 3
item replace entity @s armor.head with leather_helmet{Unbreakable:1b}

scoreboard players set @s offhand_carrot 1
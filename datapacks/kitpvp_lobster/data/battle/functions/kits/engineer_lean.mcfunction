# prepare the player for kit
scoreboard players set @s Kit_ID 39
tellraw @s "Now Using: Tainted Engineer"

# give the player the kit contents
give @s furnace{nbk:1b,display:{Name:'[{"text":"[","color":"white","italic":false},{"keybind":"key.use"},"] Build Tainted Sentry"]'}}
give @s iron_pickaxe{Unbreakable:1b}
give @s cooked_beef 64
item replace entity @s armor.head with netherite_helmet{Unbreakable:1b}

scoreboard players set @s offhand_carrot 1
# prepare the player for kit
scoreboard players set @s Kit_ID 31
tellraw @s "Now Using: Brick Thrower"

# give the player the kit contents
give @s snowball{display:{Name:'{"text":"Throwable Brick","italic":false}'},brick:1b} 16
give @s cooked_beef 64
item replace entity @s armor.chest with iron_chestplate{Unbreakable:1b}
give @s wooden_pickaxe{Unbreakable:1b}
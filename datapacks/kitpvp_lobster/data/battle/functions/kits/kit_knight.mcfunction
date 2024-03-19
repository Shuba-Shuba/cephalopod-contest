# prepare the player for kit
scoreboard players set @s Kit_ID 17
tellraw @s "Now Using: Kit Knight"

# give the player the kit contents
effect give @s speed infinite 0 true
give @s wooden_sword{Unbreakable:1b}
item replace entity @s armor.head with minecraft:chainmail_helmet{Unbreakable:1b}
item replace entity @s armor.chest with minecraft:chainmail_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with minecraft:leather_leggings{Unbreakable:1b}
item replace entity @s armor.feet with minecraft:leather_boots{Unbreakable:1b}
give @s minecraft:golden_apple 2
item replace entity @s weapon.offhand with minecraft:cooked_beef 64
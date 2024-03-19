# prepare the player for kit
scoreboard players set @s Kit_ID 13
tellraw @s "Now Using: Gapple Classic"

# give the player the kit contents
item replace entity @s armor.head with chainmail_helmet{Unbreakable:1b}
item replace entity @s armor.feet with chainmail_boots{Unbreakable:1b}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b}
item replace entity @s armor.legs with chainmail_leggings{Unbreakable:1b}
give @s stone_sword{Unbreakable:1b}
give @s golden_apple 3
give @s fishing_rod{Enchantments:[{id:"unbreaking",lvl:3}]}
give @s bow{Unbreakable:1b}
give @s arrow 3
item replace entity @s weapon.offhand with cooked_beef 5
scoreboard players set @s max_arrows 3
scoreboard players set @s max_arrow_time 200
# prepare the player for kit
scoreboard players set @s Kit_ID 40
tellraw @s "Now Using: Scout"

# give the player the kit contents
item replace entity @s armor.chest with chainmail_chestplate{Unbreakable:1b}
item replace entity @s armor.feet with chainmail_boots{Unbreakable:1b}
function shb:give/carrot/shotgun
effect give @s speed infinite 0 true
effect give @s jump_boost infinite 0 true
give @s cooked_beef 4
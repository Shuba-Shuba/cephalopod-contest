# prepare the player for kit
scoreboard players set @s Kit_ID 30
attribute @s minecraft:generic.max_health base set 16
tellraw @s "Now Using: Baseball Player"

# give the player the kit contents
give @s minecraft:wooden_sword[custom_model_data=3,enchantments={"minecraft:knockback":2},unbreakable={}]
effect give @s speed infinite 2 true
damage @s 1
item replace entity @s armor.head with minecraft:netherite_helmet[unbreakable={}]
item replace entity @s armor.feet with minecraft:iron_boots[unbreakable={}]
give @s cooked_beef 6
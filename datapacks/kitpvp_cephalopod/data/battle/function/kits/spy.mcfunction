# prepare the player for kit
scoreboard players set @s Kit_ID 22
tellraw @s "Now Using: Spy"

# give the player the kit contents
give @s minecraft:iron_sword[unbreakable={}]
give @s golden_apple 4
give @s minecraft:splash_potion[custom_name='{"italic":false,"text":"Invisibility Cloak"}',potion_contents={custom_effects:[{id:"minecraft:invisibility",duration:200}],custom_color:16381689},custom_data={pot:1b}]
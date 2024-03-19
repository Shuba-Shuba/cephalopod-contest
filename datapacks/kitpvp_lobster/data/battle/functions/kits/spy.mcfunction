# prepare the player for kit
scoreboard players set @s Kit_ID 22
tellraw @s "Now Using: Spy"

# give the player the kit contents
give @s iron_sword{Unbreakable:1b}
give @s golden_apple 4
give @s minecraft:splash_potion{pot:1b,custom_potion_effects:[{id:"minecraft:invisibility",duration:200}],CustomPotionColor:16381689,display:{Name:"{\"italic\":false,\"text\":\"Invisibility Cloak\"}"}}
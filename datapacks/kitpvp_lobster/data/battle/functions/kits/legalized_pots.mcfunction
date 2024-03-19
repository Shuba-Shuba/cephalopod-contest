# prepare the player for kit
scoreboard players set @s Kit_ID 11
tellraw @s "Now Using: Legalized Pots"

# give the player the kit contents
give @s golden_apple 5
give @s minecraft:splash_potion{pot:1b,custom_potion_effects:[{id:"minecraft:instant_damage",amplifier:1b}],display:{Name:'{"text":"Harming 2 Pot","color":"dark_purple","italic":false}'},CustomPotionColor:7536732} 4
give @s minecraft:splash_potion{pot:2b,custom_potion_effects:[{id:"minecraft:poison",amplifier:4b,duration:160}],CustomPotionColor:41995,display:{Name:'{"text":"Poison 5 Pot","color":"dark_green","italic":false}'}} 2
give @s minecraft:splash_potion{pot:3b,custom_potion_effects:[{id:"minecraft:regeneration",amplifier:4b,duration:50}],display:{Name:'{"text":"Regen 5 Pot","color":"red","italic":false}'},CustomPotionColor:16711876}
give @s minecraft:splash_potion{pot:4b,custom_potion_effects:[{id:"minecraft:speed",amplifier:4b,duration:200},{id:"minecraft:jump_boost",amplifier:2b,duration:200},{id:"minecraft:invisibility",duration:200}],CustomPotionColor:16381689,display:{Name:'{"italic":false,"text":"Goodbye Potion"}'}}
scoreboard players set @s pot_cd.dmg 0
scoreboard players set @s pot_cd.psn 0
scoreboard players set @s pot_cd.reg 0
scoreboard players set @s pot_cd.gdb 0
# prepare the player for kit
scoreboard players set @s Kit_ID 11
tellraw @s "Now Using: Legalized Pots"

# give the player the kit contents
give @s golden_apple 5
give @s minecraft:splash_potion[custom_name='{"text":"Harming 2 Pot","color":"dark_purple","italic":false}',potion_contents={custom_effects:[{id:"minecraft:instant_damage",amplifier:1b}],custom_color:7536732},custom_data={pot:1b}] 4
give @s minecraft:splash_potion[custom_name='{"text":"Poison 5 Pot","color":"dark_green","italic":false}',potion_contents={custom_effects:[{id:"minecraft:poison",amplifier:4b,duration:160}],custom_color:41995},custom_data={pot:2b}] 2
give @s minecraft:splash_potion[custom_name='{"text":"Regen 5 Pot","color":"red","italic":false}',potion_contents={custom_effects:[{id:"minecraft:regeneration",amplifier:4b,duration:50}],custom_color:16711876},custom_data={pot:3b}]
give @s minecraft:splash_potion[custom_name='{"italic":false,"text":"Goodbye Potion"}',potion_contents={custom_effects:[{id:"minecraft:speed",amplifier:4b,duration:200},{id:"minecraft:jump_boost",amplifier:2b,duration:200},{id:"minecraft:invisibility",duration:200}],custom_color:16381689},custom_data={pot:4b}]
scoreboard players set @s pot_cd.dmg 0
scoreboard players set @s pot_cd.psn 0
scoreboard players set @s pot_cd.reg 0
scoreboard players set @s pot_cd.gdb 0
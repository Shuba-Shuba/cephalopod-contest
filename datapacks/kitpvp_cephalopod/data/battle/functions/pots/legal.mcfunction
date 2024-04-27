# get potion counts
execute store result score .dmg pots run clear @s splash_potion[custom_data={pot:1b}] 0
execute store result score .psn pots run clear @s splash_potion[custom_data={pot:2b}] 0
execute store result score .reg pots run clear @s splash_potion[custom_data={pot:3b}] 0
execute store result score .gdb pots run clear @s splash_potion[custom_data={pot:4b}] 0

# reload timers (0 = start of reload)
execute unless score .dmg pots matches 4.. run scoreboard players add @s pot_cd.dmg 1
execute unless score .psn pots matches 2.. run scoreboard players add @s pot_cd.psn 1
execute unless score .reg pots matches 1.. run scoreboard players add @s pot_cd.reg 1
execute unless score .gdb pots matches 1.. run scoreboard players add @s pot_cd.gdb 1

# reload end
execute if score @s pot_cd.dmg matches 120.. run give @s minecraft:splash_potion[custom_name='{"text":"Harming 2 Pot","color":"dark_purple","italic":false}',potion_contents={custom_effects:[{id:"minecraft:instant_damage",amplifier:1b}],custom_color:7536732},custom_data={pot:1b}]
execute if score @s pot_cd.dmg matches 120.. run scoreboard players set @s pot_cd.dmg 0
execute if score @s pot_cd.psn matches 90.. run give @s minecraft:splash_potion[custom_name='{"text":"Poison 5 Pot","color":"dark_green","italic":false}',potion_contents={custom_effects:[{id:"minecraft:poison",amplifier:4b,duration:160}],custom_color:41995},custom_data={pot:2b}]
execute if score @s pot_cd.psn matches 90.. run scoreboard players set @s pot_cd.psn 0
execute if score @s pot_cd.reg matches 200.. run give @s minecraft:splash_potion[custom_name='{"text":"Regen 5 Pot","color":"red","italic":false}',potion_contents={custom_effects:[{id:"minecraft:regeneration",amplifier:4b,duration:50}],custom_color:16711876},custom_data={pot:3b}]
execute if score @s pot_cd.reg matches 200.. run scoreboard players set @s pot_cd.reg 0
execute if score @s pot_cd.gdb matches 900.. run give @s minecraft:splash_potion[custom_name='{"italic":false,"text":"Goodbye Potion"}',potion_contents={custom_effects:[{id:"minecraft:speed",amplifier:4b,duration:200},{id:"minecraft:jump_boost",amplifier:2b,duration:200},{id:"minecraft:invisibility",duration:200}],custom_color:16381689},custom_data={pot:4b}]
execute if score @s pot_cd.gdb matches 900.. run scoreboard players set @s pot_cd.gdb 0
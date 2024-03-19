# get potion counts
execute store result score .dmg pots run clear @s splash_potion{pot:1b} 0
execute store result score .psn pots run clear @s splash_potion{pot:2b} 0
execute store result score .reg pots run clear @s splash_potion{pot:3b} 0
execute store result score .gdb pots run clear @s splash_potion{pot:4b} 0

# reload timers (0 = start of reload)
execute unless score .dmg pots matches 4.. run scoreboard players add @s pot_cd.dmg 1
execute unless score .psn pots matches 2.. run scoreboard players add @s pot_cd.psn 1
execute unless score .reg pots matches 1.. run scoreboard players add @s pot_cd.reg 1
execute unless score .gdb pots matches 1.. run scoreboard players add @s pot_cd.gdb 1

# reload end
execute if score @s pot_cd.dmg matches 120.. run give @s minecraft:splash_potion{pot:1b,custom_potion_effects:[{id:"minecraft:instant_damage",amplifier:1b}],display:{Name:'{"text":"Harming 2 Pot","color":"dark_purple","italic":false}'},CustomPotionColor:7536732}
execute if score @s pot_cd.dmg matches 120.. run scoreboard players set @s pot_cd.dmg 0
execute if score @s pot_cd.psn matches 90.. run give @s minecraft:splash_potion{pot:2b,custom_potion_effects:[{id:"minecraft:poison",amplifier:4b,duration:160}],CustomPotionColor:41995,display:{Name:'{"text":"Poison 5 Pot","color":"dark_green","italic":false}'}}
execute if score @s pot_cd.psn matches 90.. run scoreboard players set @s pot_cd.psn 0
execute if score @s pot_cd.reg matches 200.. run give @s minecraft:splash_potion{pot:3b,custom_potion_effects:[{id:"minecraft:regeneration",amplifier:4b,duration:50}],display:{Name:'{"text":"Regen 5 Pot","color":"red","italic":false}'},CustomPotionColor:16711876}
execute if score @s pot_cd.reg matches 200.. run scoreboard players set @s pot_cd.reg 0
execute if score @s pot_cd.gdb matches 900.. run give @s minecraft:splash_potion{pot:4b,custom_potion_effects:[{id:"minecraft:speed",amplifier:4b,duration:200},{id:"minecraft:jump_boost",amplifier:2b,duration:200},{id:"minecraft:invisibility",duration:200}],CustomPotionColor:16381689,display:{Name:'{"italic":false,"text":"Goodbye Potion"}'}}
execute if score @s pot_cd.gdb matches 900.. run scoreboard players set @s pot_cd.gdb 0
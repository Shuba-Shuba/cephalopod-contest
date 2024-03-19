# get potion counts
execute store result score .psn pots run clear @s lingering_potion{pot:1b} 0

# reload timers (0 = start of reload)
execute unless score .psn pots matches 1.. run scoreboard players add @s pot_cd.psn 1

# reload end
execute if score @s pot_cd.psn matches 300.. run give @s lingering_potion{pot:1b,custom_potion_effects:[{id:"minecraft:poison",amplifier:4b,duration:160}],CustomPotionColor:41995,display:{Name:'{"text":"Neurotoxin","color":"dark_green","italic":false}'}}
execute if score @s pot_cd.psn matches 300.. run scoreboard players set @s pot_cd.psn 0
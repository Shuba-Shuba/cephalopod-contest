# get potion counts
execute store result score .psn pots run clear @s lingering_potion[custom_data={pot:1b}] 0

# reload timers (0 = start of reload)
execute unless score .psn pots matches 1.. run scoreboard players add @s pot_cd.psn 1

# reload end
execute if score @s pot_cd.psn matches 300.. run give @s minecraft:lingering_potion[custom_name='{"text":"Neurotoxin","color":"dark_green","italic":false}',potion_contents={custom_effects:[{id:"minecraft:poison",amplifier:4b,duration:160}],custom_color:41995},custom_data={pot:1b}]
execute if score @s pot_cd.psn matches 300.. run scoreboard players set @s pot_cd.psn 0
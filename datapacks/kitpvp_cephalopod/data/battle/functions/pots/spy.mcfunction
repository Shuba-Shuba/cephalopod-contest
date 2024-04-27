# get potion counts
execute store result score .gdb pots run clear @s splash_potion[custom_data={pot:1b}] 0

# reload timers (0 = start of reload)
execute unless score .gdb pots matches 1.. run scoreboard players add @s pot_cd.gdb 1

# reload end
execute if score @s pot_cd.gdb matches 280.. run give @s minecraft:splash_potion[custom_name='{"italic":false,"text":"Invisibility Cloak"}',potion_contents={custom_effects:[{id:"minecraft:invisibility",duration:200}],custom_color:16381689},custom_data={pot:1b}]
execute if score @s pot_cd.gdb matches 280.. run scoreboard players set @s pot_cd.gdb 0
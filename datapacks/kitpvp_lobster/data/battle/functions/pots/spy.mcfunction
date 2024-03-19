# get potion counts
execute store result score .gdb pots run clear @s splash_potion{pot:1b} 0

# reload timers (0 = start of reload)
execute unless score .gdb pots matches 1.. run scoreboard players add @s pot_cd.gdb 1

# reload end
execute if score @s pot_cd.gdb matches 280.. run give @s minecraft:splash_potion{pot:1b,custom_potion_effects:[{id:"minecraft:invisibility",duration:200}],CustomPotionColor:16381689,display:{Name:"{\"italic\":false,\"text\":\"Invisibility Cloak\"}"}}
execute if score @s pot_cd.gdb matches 280.. run scoreboard players set @s pot_cd.gdb 0
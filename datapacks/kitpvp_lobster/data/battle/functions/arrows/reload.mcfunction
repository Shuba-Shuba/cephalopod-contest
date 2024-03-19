execute store result score @s arrow_count run clear @s arrow 0
execute if score @s Kit_ID matches 18 store result score @s arrow_count run clear @s tipped_arrow 0
execute unless score @s Kit_ID matches 18 if score @s arrow_count < @s max_arrows run give @s arrow
execute if score @s Kit_ID matches 18 if score @s arrow_count < @s max_arrows run give @s tipped_arrow{CustomPotionColor:1957585,custom_potion_effects:[{id:"minecraft:water_breathing",amplifier:31b,duration:2}],display:{Name:'"Lightning Arrow"',Lore:['"Smites all players within 3.5 blocks upon impact"']},HideFlags:32}
scoreboard players set @s arrow_time 0
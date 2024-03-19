scoreboard players remove .metal calc 1
give @s iron_ingot 1
execute store result score @s arrow_count run clear @s iron_ingot 0
execute if score .metal calc matches 1.. unless score @s arrow_count matches 40.. run function cc:eng_scrap_metal
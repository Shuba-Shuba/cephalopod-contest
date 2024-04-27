execute store result score @s arrow_count run clear @s arrow 0
execute if score @s Kit_ID matches 18 store result score @s arrow_count run clear @s tipped_arrow 0
execute unless score @s Kit_ID matches 18 if score @s arrow_count < @s max_arrows run give @s arrow
execute if score @s Kit_ID matches 18 if score @s arrow_count < @s max_arrows run give @s minecraft:tipped_arrow[custom_name='"Lightning Arrow"',lore=['"Smites all players within 3.5 blocks upon impact"'],potion_contents={custom_color:1957585,custom_effects:[{id:"minecraft:water_breathing",amplifier:31b,duration:2}]},hide_additional_tooltip={}]
scoreboard players set @s arrow_time 0
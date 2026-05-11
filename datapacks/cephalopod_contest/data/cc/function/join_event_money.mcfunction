## calculate net worth
# count emeralds
execute store result score @s event_money run clear @s emerald
# refund weapons
execute store result score @s gunclear run clear @s carrot_on_a_stick[item_model="shb:pistol"]
scoreboard players operation @s event_money += @s gunclear
execute store result score @s gunclear run clear @s carrot_on_a_stick[item_model="shb:shotgun"]
scoreboard players operation @s gunclear *= 2 calc
scoreboard players operation @s event_money += @s gunclear
execute store result score @s gunclear run clear @s carrot_on_a_stick[item_model="shb:assault_rifle"]
scoreboard players operation @s gunclear *= 3 calc
scoreboard players operation @s event_money += @s gunclear
execute store result score @s gunclear run clear @s carrot_on_a_stick[item_model="shb:rocket_launcher"]
scoreboard players operation @s gunclear *= 4 calc
scoreboard players operation @s event_money += @s gunclear
execute store result score @s gunclear run clear @s carrot_on_a_stick[custom_data={shb:1b,stats:{ammo:{type:7b}}}]
scoreboard players operation @s event_money += @s gunclear

## spawn
tp @s[tag=!out] 0 69 0 0 0
clear @s[tag=!out]
function cc:get_event_money
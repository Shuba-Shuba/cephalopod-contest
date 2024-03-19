execute if score @s cowboy_mode matches 2 run give @s tipped_arrow{custom_potion_effects:[{id:"minecraft:water_breathing",amplifier:29b,duration:2}],display:{Name:'"Revolver Ammo"',Lore:['"Reduced Damage"']},HideFlags:32} 6
execute if score @s cowboy_mode matches 4 run give @s tipped_arrow{CustomPotionColor:16514816,custom_potion_effects:[{id:"minecraft:water_breathing",amplifier:28b,duration:2}],display:{Name:'{"text":"BIG BULLET","italic":false}',Lore:['"Double Damage"']},HideFlags:32}
scoreboard players remove @s cowboy_mode 1
scoreboard players set @s arrow_time 0
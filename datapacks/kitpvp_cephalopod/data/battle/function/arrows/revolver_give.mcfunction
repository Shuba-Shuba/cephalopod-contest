execute if score @s cowboy_mode matches 2 run give @s minecraft:tipped_arrow[custom_name='"Revolver Ammo"',lore=['"Reduced Damage"'],potion_contents={custom_effects:[{id:"minecraft:water_breathing",amplifier:29b,duration:2}]},hide_additional_tooltip={}] 6
execute if score @s cowboy_mode matches 4 run give @s minecraft:tipped_arrow[custom_name='{"text":"BIG BULLET","italic":false}',lore=['"Double Damage"'],potion_contents={custom_color:16514816,custom_effects:[{id:"minecraft:water_breathing",amplifier:28b,duration:2}]},hide_additional_tooltip={}]
scoreboard players remove @s cowboy_mode 1
scoreboard players set @s arrow_time 0
# prepare the player for kit
scoreboard players set @s Kit_ID 18
tellraw @s "Now Using: Wizard"

# give the player the kit contents
give @s minecraft:tipped_arrow[custom_name='"Lightning Arrow"',lore=['"Smites all players within 3.5 blocks upon impact"'],potion_contents={custom_color:1957585,custom_effects:[{id:"minecraft:water_breathing",amplifier:31b,duration:2}]},hide_additional_tooltip={}] 3
#give @s minecraft:tipped_arrow[custom_name='"Blindness Arrow"',lore=['"Blinds all players within 5.5 blocks upon impact"'],potion_contents={custom_color:8650951,custom_effects:[{id:"minecraft:water_breathing",amplifier:34b,duration:2}]},hide_additional_tooltip={}] 4
give @s minecraft:tipped_arrow[custom_name='"TNT Arrow"',lore=['"Explodes upon impact"'],potion_contents={custom_color:16711680,custom_effects:[{id:"minecraft:water_breathing",amplifier:30b,duration:2}]},hide_additional_tooltip={}] 2
give @s minecraft:wooden_sword[unbreakable={}]
give @s minecraft:bow[unbreakable={},custom_model_data=11]
#give @s minecraft:carrot_on_a_stick[custom_model_data=11008,custom_name='{"text":"Poison Ball","italic":false}',lore=['{"text":"Short Range","color":"white","italic":false}','{"text":"Slow Fire Rate","color":"white","italic":false}','{"text":"Delivers Poison II Upon Impact","color":"gray","italic":true}','{"text":"6 Magic Damage","color":"white","italic":false}'],custom_data={DamageRPG:6}]
execute at @s run summon item ~ ~ ~ {Item:{id:"splash_potion",count:3,components:{"minecraft:potion_contents":{potion:"strong_poison"}}}}
give @s cooked_beef 64
item replace entity @s armor.head with minecraft:leather_helmet[unbreakable={}]
item replace entity @s armor.chest with minecraft:leather_chestplate[unbreakable={}]
scoreboard players set @s max_arrows 3
scoreboard players set @s max_arrow_time 120
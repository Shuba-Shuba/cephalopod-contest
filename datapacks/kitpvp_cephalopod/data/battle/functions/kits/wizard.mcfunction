# prepare the player for kit
scoreboard players set @s Kit_ID 18
tellraw @s "Now Using: Wizard"

# give the player the kit contents
give @s tipped_arrow{CustomPotionColor:1957585,custom_potion_effects:[{id:"minecraft:water_breathing",amplifier:31b,duration:2}],display:{Name:'"Lightning Arrow"',Lore:['"Smites all players within 3.5 blocks upon impact"']},HideFlags:32} 3
#give @s tipped_arrow{CustomPotionColor:8650951,custom_potion_effects:[{id:"minecraft:water_breathing",amplifier:34b,duration:2}],display:{Name:'"Blindness Arrow"',Lore:['"Blinds all players within 5.5 blocks upon impact"']},HideFlags:32} 4
give @s tipped_arrow{CustomPotionColor:16711680,custom_potion_effects:[{id:"minecraft:water_breathing",amplifier:30b,duration:2}],display:{Name:'"TNT Arrow"',Lore:['"Explodes upon impact"']},HideFlags:32} 2
give @s wooden_sword{Unbreakable:1b}
give @s bow{Unbreakable:1b,CustomModelData:11}
#give @s carrot_on_a_stick{CustomModelData:11008,DamageRPG:6,display:{Name:'{"text":"Poison Ball","italic":false}',Lore:['{"text":"Short Range","color":"white","italic":false}','{"text":"Slow Fire Rate","color":"white","italic":false}','{"text":"Delivers Poison II Upon Impact","color":"gray","italic":true}','{"text":"6 Magic Damage","color":"white","italic":false}']}}
execute at @s run summon item ~ ~ ~ {Item:{id:"splash_potion",Count:3,tag:{Potion:"strong_poison"}}}
give @s cooked_beef 64
item replace entity @s armor.head with leather_helmet{Unbreakable:1}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1}
scoreboard players set @s max_arrows 3
scoreboard players set @s max_arrow_time 120
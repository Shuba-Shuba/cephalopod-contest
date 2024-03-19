scoreboard players set @s deaths 0
tag @s add tmp_dead

# give resources to killer
execute store result score @p[scores={kills=1..}] steal_iron run clear @s iron_ingot
execute store result score @p[scores={kills=1..}] steal_gold run clear @s gold_ingot
execute store result score @p[scores={kills=1..}] steal_diamond run clear @s diamond
execute store result score @p[scores={kills=1..}] steal_emerald run clear @s emerald
tellraw @p[scores={steal_iron=1..}] [{"text":"+","color":"green"},{"score":{"name":"*","objective":"steal_iron"}}," iron"]
tellraw @p[scores={steal_gold=1..}] [{"text":"+","color":"green"},{"score":{"name":"*","objective":"steal_gold"}}," gold"]
tellraw @p[scores={steal_diamond=1..}] [{"text":"+","color":"green"},{"score":{"name":"*","objective":"steal_diamond"}}," diamond"]
tellraw @p[scores={steal_emerald=1..}] [{"text":"+","color":"green"},{"score":{"name":"*","objective":"steal_emerald"}}," emerald"]
execute as @p[scores={kills=1..}] run loot give @s loot cc:steal
scoreboard players set @a steal_iron 0
scoreboard players set @a steal_gold 0
scoreboard players set @a steal_diamond 0
scoreboard players set @a steal_emerald 0
scoreboard players set @a kills 0

# inventory reset
clear @s
item replace entity @s armor.head with leather_helmet{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:1}
item replace entity @s armor.chest with leather_chestplate{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:1}
item replace entity @s[scores={armor_level=1}] armor.legs with leather_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:1}
item replace entity @s[scores={armor_level=1}] armor.feet with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:1}
item replace entity @s[scores={armor_level=2}] armor.legs with chainmail_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:1}
item replace entity @s[scores={armor_level=2}] armor.feet with chainmail_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:1}
item replace entity @s[scores={armor_level=3}] armor.legs with iron_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:1}
item replace entity @s[scores={armor_level=3}] armor.feet with iron_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:1}
item replace entity @s[scores={armor_level=4}] armor.legs with diamond_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:1}
item replace entity @s[scores={armor_level=4}] armor.feet with diamond_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:1}
item modify entity @s armor.head cc:prot
item modify entity @s armor.chest cc:prot
item modify entity @s armor.legs cc:prot
item modify entity @s armor.feet cc:prot
item replace entity @s hotbar.0 with wooden_sword{Unbreakable:1b,CanDestroy:["#cc:placeable"],HideFlags:8}
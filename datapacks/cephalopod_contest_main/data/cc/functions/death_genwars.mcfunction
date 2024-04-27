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
item replace entity @s armor.head with minecraft:leather_helmet[unbreakable={},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b}]
item replace entity @s armor.chest with minecraft:leather_chestplate[unbreakable={},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b}]
item replace entity @s[scores={armor_level=1}] armor.legs with minecraft:leather_leggings[unbreakable={},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b}]
item replace entity @s[scores={armor_level=1}] armor.feet with minecraft:leather_boots[unbreakable={},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b}]
item replace entity @s[scores={armor_level=2}] armor.legs with minecraft:chainmail_leggings[unbreakable={},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b}]
item replace entity @s[scores={armor_level=2}] armor.feet with minecraft:chainmail_boots[unbreakable={},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b}]
item replace entity @s[scores={armor_level=3}] armor.legs with minecraft:iron_leggings[unbreakable={},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b}]
item replace entity @s[scores={armor_level=3}] armor.feet with minecraft:iron_boots[unbreakable={},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b}]
item replace entity @s[scores={armor_level=4}] armor.legs with minecraft:diamond_leggings[unbreakable={},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b}]
item replace entity @s[scores={armor_level=4}] armor.feet with minecraft:diamond_boots[unbreakable={},enchantments={levels:{"minecraft:binding_curse":1},show_in_tooltip:0b}]
item modify entity @s armor.head cc:prot
item modify entity @s armor.chest cc:prot
item modify entity @s armor.legs cc:prot
item modify entity @s armor.feet cc:prot
item replace entity @s hotbar.0 with minecraft:wooden_sword[unbreakable={},can_break={predicates:[{blocks:"#cc:placeable"}],show_in_tooltip:0b}]
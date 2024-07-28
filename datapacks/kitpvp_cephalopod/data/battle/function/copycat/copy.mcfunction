# remove previous tags
tag @a remove target
tag @a remove copy
tag @a remove copy_ar
tag @a remove copy_rocket
tag @a remove copy_crafting
tag @a remove copy_anvil
tag @a remove copy_beacon
tag @a remove copy_book

# filter out players without selected items
tag @a[gamemode=adventure,distance=0.01..8] add target
execute as @a[tag=target] store result score @s selecteditem run data get entity @s SelectedItem
execute as @a[tag=target] if score @s selecteditem matches 1.. run tag @s add copy

# check for certain items
execute as @p[tag=copy] if data entity @s {SelectedItem:{components:{"minecraft:custom_model_data":11001}}} run tag @s add copy_ar
execute as @p[tag=copy] if data entity @s {SelectedItem:{components:{"minecraft:custom_model_data":11005}}} run tag @s add copy_rocket
execute as @p[tag=copy] if data entity @s {SelectedItem:{id:"minecraft:crafting_table"}} run tag @s add copy_crafting
execute as @p[tag=copy] if data entity @s {SelectedItem:{id:"minecraft:anvil"}} run tag @s add copy_anvil
execute as @p[tag=copy] if data entity @s {SelectedItem:{id:"minecraft:beacon"}} run tag @s add copy_beacon
execute as @p[tag=copy] if data entity @s {SelectedItem:{id:"minecraft:book"}} run tag @s add copy_book

# only accept nearest player passing all tests
tag @p[tag=copy] add keep
tag @a[tag=copy,tag=!keep] remove copy
tag @a remove keep

# copy item if possible, or do no_copy function if not possible
item replace entity @s hotbar.0 from entity @p[tag=copy,tag=!copy_ar,tag=!copy_rocket,tag=!copy_crafting,tag=!copy_anvil,tag=!copy_beacon,tag=!copy_book] weapon.mainhand
execute if entity @p[tag=copy] unless score @s gravity matches 2 run title @s actionbar ["Copied selected item from ",{"selector":"@p[tag=copy]"}]
execute unless entity @p[tag=copy] run function battle:copycat/no_copy

# replace certain items
execute if entity @p[tag=copy_ar] run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[custom_model_data=11001,custom_name='{"text":"Assault Rifle","italic":false}',lore=['{"text":"Medium Range","color":"white","italic":false}','{"text":"High Fire Rate","color":"white","italic":false}','{"text":"hehe assault rifle go BRRRR","color":"gray","italic":true}'],custom_data={DamageRPG:3}]
execute if entity @p[tag=copy_rocket] run item replace entity @s hotbar.0 with minecraft:carrot_on_a_stick[custom_model_data=11005,custom_name='{"text":"Rocket Launcher","italic":false}',lore=['{"text":"Medium Range","color":"white","italic":false}','{"text":"The Nuclear Option","color":"gray","italic":true}','{"text":"65 Splash Damage","color":"white","italic":false}']]
execute if entity @p[tag=copy_crafting] run item replace entity @s hotbar.0 with minecraft:crafting_table[custom_name='{"text":"Build Sentry [FREE]","italic":false,"color":"white"}',lore=['{"text":"Building sentries is completely free for copycats,","color":"gray"}','{"text":"but you can only build 1 at a time.","color":"gray"}']]
execute if entity @p[tag=copy_anvil] run item replace entity @s hotbar.0 with minecraft:anvil[custom_name='{"text":"Upgrade Sentry [FREE]","italic":false,"color":"white"}',lore=['{"text":"Upgrading sentries is completely free for copycats.","color":"gray"}']]
execute if entity @p[tag=copy_beacon] run item replace entity @s hotbar.0 with minecraft:beacon[custom_name='{"text":"Heal Sentry [FREE]","italic":false,"color":"white"}',lore=['{"text":"Healing sentries is completely free for copycats.","color":"gray"}']]
execute if entity @p[tag=copy_book] run item replace entity @s hotbar.0 with minecraft:iron_hoe[unbreakable={},custom_name='{"text":"Random Item BE LIKE DOE","italic":false}']
## setup
scoreboard players set .id itembox_cd 0
execute store result score .id itembox_cd run data get entity @s Inventory[{Slot:-106b}].tag.nbk_id
tag @s add this

## use item
# nitro boat karts
execute if score %mode game matches 16 if score .id itembox_cd matches 0 run schedule function cc:lightning_remove 1s
execute if score %mode game matches 16 if score .id itembox_cd matches 0 run tellraw @s "Struck everyone with lightning"
execute if score %mode game matches 16 if score .id itembox_cd matches 0 as @a[tag=!this] at @s positioned ~ ~0.5 ~ run function cc:item_lightning
execute if score %mode game matches 16 if score .id itembox_cd matches 1 run function cc:item_blooper
execute if score %mode game matches 16 if score .id itembox_cd matches 2 run function cc:item_coke
# nun run
execute if score %mode game matches 9 if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:sugar"}]} run function cc:super_nun
execute if score %mode game matches 9 if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:nether_star"}]} run function cc:stun_the_sinful
execute if score %mode game matches 9 if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:turtle_egg"}]} run function cc:judgement
# kitpvp weapons
#execute if data entity @s {Inventory:[{Slot:-106b,tag:{CustomModelData:11008}}]} unless score @s flame_cd matches 1.. run function sp:abilities/flame
#execute if data entity @s {Inventory:[{Slot:-106b,tag:{CustomModelData:11031}}]} unless score @s gravity_cd matches 1.. run function sp:abilities/gravity
execute if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:tnt"}]} if score @s Kit_ID matches 29 run function cc:landed
#execute if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:brick"}]} if score @s Kit_ID matches 31 unless score @s brick_cd matches 1.. run function sp:abilities/brick
execute if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:book"}]} if score @s Kit_ID matches 32 unless score @s tp_cd matches 1.. run function cc:teleporter_use
execute if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:evoker_spawn_egg"}]} run function cc:evoker
execute if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:oak_planks"}]} if score @s Kit_ID matches 36 unless score @s build_cd matches 1.. run function battle:build/wall
execute if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:petrified_oak_slab"}]} if score @s Kit_ID matches 36 unless score @s build_cd matches 1.. run function battle:build/floor
# go through other kitpvp rightclicks as well
execute if score @s Kit_ID matches 23 run function battle:eng/rightclick
execute if score @s Kit_ID matches 25 run function battle:eng/rightclick
#execute if score @s Kit_ID matches 25..26 run function battle:pyro/rightclick
execute if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:furnace"}]} if score @s Kit_ID matches 39 if score @s sentry_count matches 0 unless score @s build_cd matches 1.. at @s run function battle:eng/sentry/build_lean
execute if data entity @s {Inventory:[{Slot:-106b,id:"minecraft:furnace"}]} if score @s Kit_ID matches 25 if score @s sentry_count matches 0 unless score @s build_cd matches 1.. at @s run function battle:eng/sentry/build_lean
# mini tnt
#execute if score %mode game matches 24 run function cc:swap_hands
execute if score %mode game matches 24 run function cc:tnt_rightclick
# board game
execute if score %in game matches 2 run function cc:board/rightclick

## end
tag @s remove this
execute if score %mode game matches 16 run item replace entity @s weapon.offhand with air
execute if score %mode game matches 21 unless score @s Kit_ID matches 23 unless score @s Kit_ID matches 25 run function cc:swap_hands

#say item use
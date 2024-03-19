# if ammo items are disabled set reserve to 32 bit integer limit
execute if score ammo_items.enabled config matches 0 run scoreboard players set .ammo.reserve stats 2147483647

# if ammo items are enabled set reserve to item count
execute if score ammo_items.enabled config matches 1 if score .ammo.type stats matches 1 store result score .ammo.reserve stats run clear @s #shb:ammo{ammo:{type:1b}} 0
execute if score ammo_items.enabled config matches 1 if score .ammo.type stats matches 2 store result score .ammo.reserve stats run clear @s #shb:ammo{ammo:{type:1b}} 0
execute if score ammo_items.enabled config matches 1 if score .ammo.type stats matches 3 store result score .ammo.reserve stats run clear @s #shb:ammo{ammo:{type:1b}} 0
execute if score ammo_items.enabled config matches 1 if score .ammo.type stats matches 4..6 run scoreboard players set .ammo.reserve stats 2147483647

scoreboard players operation #ammo.reserve stats = .ammo.reserve stats
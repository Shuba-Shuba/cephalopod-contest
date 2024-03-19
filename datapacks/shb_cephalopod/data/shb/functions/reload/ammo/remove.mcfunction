function shb:sfx/reload
execute if score ammo_items.enabled config matches 1 if score .ammo.type stats matches 1 run function shb:reload/ammo/remove_type1
execute if score ammo_items.enabled config matches 1 if score .ammo.type stats matches 2 run function shb:reload/ammo/remove_type2
execute if score ammo_items.enabled config matches 1 if score .ammo.type stats matches 3 run function shb:reload/ammo/remove_type3
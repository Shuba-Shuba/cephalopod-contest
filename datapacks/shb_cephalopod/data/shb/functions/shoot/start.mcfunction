execute if score .loaded stats matches 0 run function shb:gun/get_stats

execute if score .ammo.count stats matches 1.. if score .semiauto stats matches 0 unless score @s cd matches 1.. run function shb:shoot/shoot
execute if score .ammo.count stats matches 1.. if score .semiauto stats matches 1 if score .rightclick gun matches 0 unless score @s cd matches 1.. run function shb:shoot/shoot

# [CEPHALOPOD CONTEST] laser for mini tnt
execute if score .ammo.type stats matches 7 unless score @s laser matches 1.. run function shb:shoot/laser

# [CEPHALOPOD CONTEST] kitpvp rightclick ease of use for offhand-activated items
execute if score @s offhand_carrot matches 1 unless score .ammo.type stats matches 1.. run function cc:swap_hands
execute if score @s offhand_carrot matches 1 unless score .ammo.type stats matches 1.. run function cc:item_use

advancement revoke @s only shb:rightclick
scoreboard players set @s carrot_click 0
scoreboard players set @s rightclick 1
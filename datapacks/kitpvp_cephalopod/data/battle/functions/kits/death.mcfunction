clear @s
scoreboard players set @s gravity 0
xp set @s 0 points
xp set @s 0 levels
execute if score @s rocket_killed matches 1.. unless score @s rocketUUID0 matches 0 unless score @s rocketUUID1 matches 0 unless score @s rocketUUID2 matches 0 unless score @s rocketUUID3 matches 0 run function sp:rocket_kill
execute if score @s Kit_ID matches 1 if score enabled? op_kits matches 1.. run function battle:kits/kit_guard
execute if score @s Kit_ID matches 2 run function battle:kits/all_the_gear
execute if score @s Kit_ID matches 3 run function battle:kits/projectile_master
execute if score @s Kit_ID matches 4 run function battle:kits/kit_lumberjack
execute if score @s Kit_ID matches 5 run function battle:kits/kit_armor
execute if score @s Kit_ID matches 6 run function battle:kits/kit_armor_plus
execute if score @s Kit_ID matches 7 run function battle:kits/kit_demolitionist
execute if score @s Kit_ID matches 8 if score enabled? op_kits matches 1.. run function battle:kits/kit_gapple
execute if score @s Kit_ID matches 9 if score enabled? op_kits matches 1.. run function battle:kits/op_pot_pvp
execute if score @s Kit_ID matches 10 run function battle:kits/enders_kit
execute if score @s Kit_ID matches 11 run function battle:kits/legalized_pots
execute if score @s Kit_ID matches 12 run function battle:kits/noob_shield_user
execute if score @s Kit_ID matches 13 run function battle:kits/gapple_classic
execute if score @s Kit_ID matches 14 run function battle:kits/defenseless_tank
execute if score @s Kit_ID matches 15 run function battle:kits/super_boots
execute if score @s Kit_ID matches 16 run function battle:kits/kit_pro
execute if score @s Kit_ID matches 17 run function battle:kits/kit_knight
execute if score @s Kit_ID matches 18 run function battle:kits/wizard
execute if score @s Kit_ID matches 19 run function battle:kits/kit_pp
execute if score @s Kit_ID matches 20 run function battle:kits/cowboy
execute if score @s Kit_ID matches 21 run function battle:kits/gunslinger
execute if score @s Kit_ID matches 22 run function battle:kits/spy
execute if score @s Kit_ID matches 23 run function battle:kits/engineer
execute if score @s Kit_ID matches 24 if score enabled? op_kits matches 1.. run function battle:kits/rpg_full
execute if score @s Kit_ID matches 25 run function battle:kits/copycat
execute if score @s Kit_ID matches 26 run function battle:kits/pyro
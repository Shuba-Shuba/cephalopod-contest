execute if score %mode game matches 21 store result score .out prng run random value 0..31
execute if score %mode game matches 26 store result score .out prng run random value 0..29
function battle:kits/clear_kit
#execute if score .out prng matches 1 if score enabled? op_kits matches 1.. run function battle:kits/kit_guard
execute if score .out prng matches 0 run function battle:kits/gravity_master
#execute if score .out prng matches 1 run function battle:kits/suicide
execute if score .out prng matches 1 run function battle:kits/scout
execute if score .out prng matches 2 run function battle:kits/all_the_gear
execute if score .out prng matches 3 run function battle:kits/projectile_master
execute if score .out prng matches 4 run function battle:kits/kit_lumberjack
execute if score .out prng matches 5 run function battle:kits/kit_armor
#execute if score .out prng matches 6 run function battle:kits/kit_armor_plus
execute if score .out prng matches 6 run function battle:kits/trump
execute if score .out prng matches 7 run function battle:kits/kit_demolitionist
#execute if score .out prng matches 8 if score enabled? op_kits matches 1.. run function battle:kits/kit_gapple
#execute if score .out prng matches 9 if score enabled? op_kits matches 1.. run function battle:kits/op_pot_pvp
execute if score .out prng matches 8 run function battle:kits/baseball
execute if score .out prng matches 9 run function battle:kits/brick_thrower
execute if score .out prng matches 11 run function battle:kits/legalized_pots
execute if score .out prng matches 12 run function battle:kits/noob_shield_user
execute if score .out prng matches 13 run function battle:kits/gapple_classic
execute if score .out prng matches 14 run function battle:kits/defenseless_tank
execute if score .out prng matches 15 run function battle:kits/super_boots
execute if score .out prng matches 16 run function battle:kits/kit_pro
execute if score .out prng matches 17 run function battle:kits/kit_knight
execute if score .out prng matches 18 run function battle:kits/wizard
execute if score .out prng matches 19 run function battle:kits/kit_pp
execute if score .out prng matches 20 run function battle:kits/cowboy
execute if score .out prng matches 21 run function battle:kits/gunslinger
execute if score .out prng matches 22 run function battle:kits/spy
execute if score .out prng matches 23 run function battle:kits/engineer
#execute if score .out prng matches 24 if score enabled? op_kits matches 1.. run function battle:kits/rpg_full
execute if score .out prng matches 25 run function battle:kits/copycat
execute if score .out prng matches 26 run function battle:kits/pyro
execute if score .out prng matches 27 run function battle:kits/lumberjack_lean
#execute if score .out prng matches 28 run function battle:kits/evoker
execute if score .out prng matches 28 run function battle:kits/engineer_lean
#execute if score .out prng matches 29 run function battle:kits/sussy_balls
execute if score .out prng matches 29 run function battle:kits/gladiator
execute if score .out prng matches 10 run function battle:kits/big_kb
execute if score .out prng matches 24 run function battle:kits/super_speed
execute if score .out prng matches 30 run function battle:kits/enders_kit
execute if score .out prng matches 31 run function battle:kits/teleporter
#execute if score .out prng matches 35 run function battle:kits/medic
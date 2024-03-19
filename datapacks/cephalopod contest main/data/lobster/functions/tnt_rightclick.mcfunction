execute store result score .item game run data get entity @s SelectedItem.tag.tnt
execute if score .item game matches 1 run function lobster:broken_modem
execute if score .item game matches 2 run function lobster:throw_level_bomb
execute if score .item game matches 3 run function lobster:super_jump
execute if score .item game matches 4 run function lobster:ride_minecart
execute if score .item game matches 5 run function lobster:quick_bomb
execute if score .item game matches 6 run function lobster:demolish_dispenser
execute if score .item game matches 7 if score @s arrow_count matches 5.. run function lobster:eng_arrow
execute if score .item game matches 8 if score @s arrow_count matches 10.. run function lobster:eng_platform
execute if score .item game matches 9 if score @s arrow_count matches 12.. run function lobster:eng_sentry
execute if score .item game matches 10 run function lobster:demolish_sentry
execute if score .item game matches 11 if score @s arrow_count matches 12.. run function lobster:eng_creeper
execute if score .item game matches 12 run function lobster:demolish_creeper
execute if score .item game matches 13 run function lobster:spawn_drill
execute if score .item game matches 14 unless score @s warp_cd matches 1.. run tag @s add arc_warp
execute if score .item game matches 15 unless score @s reatomize_cd matches 1.. run tag @s add arc_reatomize
execute if score .item game matches 16 anchored eyes positioned ^ ^ ^ run function lobster:dagger
execute if score .item game matches 17 anchored eyes positioned ^ ^ ^ rotated ~ 0 run function lobster:cloak
execute if score .item game matches 18 run function lobster:eng_scrap
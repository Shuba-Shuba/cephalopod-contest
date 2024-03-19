execute store result score .item game run data get entity @s SelectedItem.tag.tnt
execute if score .item game matches 1 run function cc:broken_modem
execute if score .item game matches 2 run function cc:throw_level_bomb
execute if score .item game matches 3 run function cc:super_jump
execute if score .item game matches 4 run function cc:ride_minecart
execute if score .item game matches 5 run function cc:quick_bomb
execute if score .item game matches 6 run function cc:demolish_dispenser
execute if score .item game matches 7 if score @s arrow_count matches 5.. run function cc:eng_arrow
execute if score .item game matches 8 if score @s arrow_count matches 10.. run function cc:eng_platform
execute if score .item game matches 9 if score @s arrow_count matches 12.. run function cc:eng_sentry
execute if score .item game matches 10 run function cc:demolish_sentry
execute if score .item game matches 11 if score @s arrow_count matches 12.. run function cc:eng_creeper
execute if score .item game matches 12 run function cc:demolish_creeper
execute if score .item game matches 13 run function cc:spawn_drill
execute if score .item game matches 14 unless score @s warp_cd matches 1.. run tag @s add arc_warp
execute if score .item game matches 15 unless score @s reatomize_cd matches 1.. run tag @s add arc_reatomize
execute if score .item game matches 16 anchored eyes positioned ^ ^ ^ run function cc:dagger
execute if score .item game matches 17 anchored eyes positioned ^ ^ ^ rotated ~ 0 run function cc:cloak
execute if score .item game matches 18 run function cc:eng_scrap
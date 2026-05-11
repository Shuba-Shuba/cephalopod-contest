execute store result score @s armor_check run clear @s diamond 0
execute as @s[team=red] if score @s armor_check >= %red armor_check run function cc:upgrade_armor_red
execute as @s[team=blue] if score @s armor_check >= %blue armor_check run function cc:upgrade_armor_blue
execute as @s[team=green] if score @s armor_check >= %green armor_check run function cc:upgrade_armor_green
execute as @s[team=yellow] if score @s armor_check >= %yellow armor_check run function cc:upgrade_armor_yellow
execute store result score @s gen_check run clear @s diamond 0
execute as @s[team=red] if score @s gen_check >= %red gen_check run function lobster:upgrade_forge_red
execute as @s[team=blue] if score @s gen_check >= %blue gen_check run function lobster:upgrade_forge_blue
execute as @s[team=green] if score @s gen_check >= %green gen_check run function lobster:upgrade_forge_green
execute as @s[team=yellow] if score @s gen_check >= %yellow gen_check run function lobster:upgrade_forge_yellow
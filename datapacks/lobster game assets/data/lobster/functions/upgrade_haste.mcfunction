scoreboard players set @s armor_check 0
execute as @s[team=red] run scoreboard players set %red_haste upgrade_bool 1
execute as @s[team=blue] run scoreboard players set %blue_haste upgrade_bool 1
execute as @s[team=green] run scoreboard players set %green_haste upgrade_bool 1
execute as @s[team=yellow] run scoreboard players set %yellow_haste upgrade_bool 1
execute as @s[team=red] run tellraw @a[team=red] ["",{"selector":"@s"}," purchased permanent haste 1 upgrade"]
execute as @s[team=blue] run tellraw @a[team=blue] ["",{"selector":"@s"}," purchased permanent haste 1 upgrade"]
execute as @s[team=green] run tellraw @a[team=green] ["",{"selector":"@s"}," purchased permanent haste 1 upgrade"]
execute as @s[team=yellow] run tellraw @a[team=yellow] ["",{"selector":"@s"}," purchased permanent haste 1 upgrade"]
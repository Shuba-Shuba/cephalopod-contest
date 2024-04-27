scoreboard players set @s night_vision 0
execute if score @s night_toggle matches 1 run tag @s add night_disable
execute unless score @s night_toggle matches 1 run tag @s add night_enable
scoreboard players set @s[tag=night_disable] night_toggle 0
scoreboard players set @s[tag=night_enable] night_toggle 1
tellraw @s[tag=night_disable] "Disabled night vision."
tellraw @s[tag=night_enable] "Enabled night vision."
tag @s remove night_enable
tag @s remove night_disable
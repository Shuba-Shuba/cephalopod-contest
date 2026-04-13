execute unless score @s launch_cd matches 1.. run effect give @s resistance 2 255 true
execute unless score @s launch_cd matches 1.. rotated ~ 0 positioned ^ ^ ^-1 rotated ~ 90 run function shb:shoot/gravity
execute unless score @s launch_cd matches 1.. run scoreboard players set @s launch_cd 40
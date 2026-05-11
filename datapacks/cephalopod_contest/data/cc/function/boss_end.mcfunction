# buffer time between end of fight and end of round
scoreboard players set %tick game 0
scoreboard players set .boss_setup game -1
schedule function cc:end 13s

# announce stats
execute as @a[tag=!out,tag=!ded] run function cc:boss_stats
execute as @a[tag=ded_boss] run function cc:boss_lifetime
tag @a remove ded_boss

# add winner tag to all survivors except player(s) with the least points
scoreboard players operation #least boss_points < @a[tag=!out,tag=!ded] boss_points
execute as @a[tag=!out,tag=!ded] unless score @s boss_points = #least boss_points run tag @s add winner
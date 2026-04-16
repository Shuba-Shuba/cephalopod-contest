# PRESIDENT'S DAY IN MAY EVENT
execute as @a store result score @s event_money run clear @s emerald

execute as @a store result score @s gunclear run clear @s carrot_on_a_stick[item_model="shb:pistol"]
execute as @a run scoreboard players operation @s event_money += @s gunclear

execute as @a store result score @s gunclear run clear @s carrot_on_a_stick[item_model="shb:shotgun"]
execute as @a run scoreboard players operation @s gunclear *= 2 calc
execute as @a run scoreboard players operation @s event_money += @s gunclear

execute as @a store result score @s gunclear run clear @s carrot_on_a_stick[item_model="shb:assault_rifle"]
execute as @a run scoreboard players operation @s gunclear *= 3 calc
execute as @a run scoreboard players operation @s event_money += @s gunclear

execute as @a store result score @s gunclear run clear @s carrot_on_a_stick[item_model="shb:rocket_launcher"]
execute as @a run scoreboard players operation @s gunclear *= 4 calc
execute as @a run scoreboard players operation @s event_money += @s gunclear

execute as @a store result score @s gunclear run clear @s carrot_on_a_stick[custom_data={shb:1b,stats:{ammo:{type:7b}}}]
execute as @a run scoreboard players operation @s event_money += @s gunclear

# board game
kill @e[type=mannequin,tag=board_player]

# forceload fix (yes run it twice)
execute at @e[type=marker] run forceload add ~ ~
execute at @e[type=marker] run forceload add ~ ~

# start game
tag @a remove ded
execute unless score %board game matches 1 run tag @e[type=marker,tag=mode_rng] remove used
function cc:next_round
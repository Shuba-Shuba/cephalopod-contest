# PRESIDENT'S DAY IN MAY EVENT
execute as @a store result score @s event_money run clear @s emerald

execute as @a store result score @s gunclear run clear @s carrot_on_a_stick{CustomModelData:201}
execute as @a run scoreboard players operation @s event_money += @s gunclear

execute as @a store result score @s gunclear run clear @s carrot_on_a_stick{CustomModelData:206}
execute as @a run scoreboard players operation @s gunclear *= 2 calc
execute as @a run scoreboard players operation @s event_money += @s gunclear

execute as @a store result score @s gunclear run clear @s carrot_on_a_stick{CustomModelData:204}
execute as @a run scoreboard players operation @s gunclear *= 3 calc
execute as @a run scoreboard players operation @s event_money += @s gunclear

execute as @a store result score @s gunclear run clear @s carrot_on_a_stick{CustomModelData:203}
execute as @a run scoreboard players operation @s gunclear *= 4 calc
execute as @a run scoreboard players operation @s event_money += @s gunclear

execute as @a store result score @s gunclear run clear @s carrot_on_a_stick{shb:1b,stats:{ammo:{type:7b}}}
execute as @a run scoreboard players operation @s event_money += @s gunclear

# board game
kill @e[type=armor_stand,tag=board_player]

# forceload fix (yes run it twice)
execute at @e[type=marker] run forceload add ~ ~
execute at @e[type=marker] run forceload add ~ ~

# start game
tag @a remove ded
tag @e[type=marker,tag=mode_rng] remove used
function cc:next_round
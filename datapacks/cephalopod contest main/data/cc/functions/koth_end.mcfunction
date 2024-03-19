# set lowest score threshold to a random player's score
scoreboard players operation %least koth = @r[tag=!out,tag=!ded] koth

# go through all players and lower threshold to their score if their score is lower than the current threshold
execute as @a[tag=!out,tag=!ded] run scoreboard players operation %least koth < @s koth
tag @a remove tmp_search

# make player(s) with lowest score explode and mark them as dead
execute as @a[tag=!out,tag=!ded] unless score @s koth = %least koth run tag @s add winner
execute as @a[tag=!out,tag=!ded] if score @s koth = %least koth run function cc:landed
execute as @a[tag=!out,tag=!ded] if score @s koth = %least koth run function cc:death

# clear super boots (depth strider)
clear @a netherite_boots{super_boots:1b}

# end of round
#function cc:end
scoreboard players set %replay_players game 1
function rep:play
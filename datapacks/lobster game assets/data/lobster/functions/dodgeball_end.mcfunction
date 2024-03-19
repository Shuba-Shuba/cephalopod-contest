# prevent double round end
scoreboard players set #tmp_ended game 1

# count players on each team
execute if score %mode game matches 8 store result score #tmp_red game if entity @a[team=red,tag=!ded]
execute if score %mode game matches 8 store result score #tmp_blue game if entity @a[team=blue,tag=!ded]

# if red team wins
execute if score #tmp_red game > #tmp_blue game run tag @a[team=red] remove ded
execute if score #tmp_red game > #tmp_blue game run tag @a[team=red] add winner
execute if score #tmp_red game > #tmp_blue game run tellraw @a {"text":"Red team wins!","color":"red"}

# if blue team wins
execute if score #tmp_red game < #tmp_blue game run tag @a[team=blue] remove ded
execute if score #tmp_red game < #tmp_blue game run tag @a[team=blue] add winner
execute if score #tmp_red game < #tmp_blue game run tellraw @a {"text":"Blue team wins!","color":"aqua"}

# if neither team wins
execute if score #tmp_red game = #tmp_blue game run tag @a[tag=!out] add ded
execute if score #tmp_red game = #tmp_blue game run tellraw @a {"text":"Both teams drew, everyone dies!","color":"yellow"}

# explode dead players
execute as @a[tag=ded,gamemode=adventure] at @s run function sp:landed

# clear dodgeballs
clear @a snowball{dodge:1b}

# clear everything (quick craft only)
execute if score %mode game matches 12 run clear @a[tag=!out]

# end of round
function lobster:end
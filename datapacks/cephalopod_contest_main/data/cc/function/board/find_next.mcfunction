# go to next turn number
scoreboard players add .i board_turn 1

# if player is here, we're done searching
execute as @a[tag=!out] if score @s board_turn = .i board_turn at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 2 1 1
execute as @a[tag=!out] if score @s board_turn = .i board_turn run tellraw @a ["",{"selector":"@s"},"'s turn"]
execute as @a[tag=!out] if score @s board_turn = .i board_turn run return 1

# if we've reached the end of the player list, stop
execute if score .i board_turn >= %board_players_all game run return fail

# otherwise, keep searching
tellraw @a "skipping an absent player's turn..."
return run function cc:board/find_next
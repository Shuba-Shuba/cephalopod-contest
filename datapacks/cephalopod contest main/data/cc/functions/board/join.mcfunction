# rejoined after turn
execute if score .i board_turn > @s board_turn run tellraw @s "Rejoined board game mode. Your stats/items have been saved. Your turn this round was skipped while you were gone."

# rejoined before turn
execute if score .i board_turn < @s board_turn run tellraw @s "Rejoined board game mode. Your stats/items have been saved. You'll still get a turn this round."

# hasn't joined this game yet
execute unless score @s board_turn matches 1.. run function cc:board/new_player

tag @s remove joining
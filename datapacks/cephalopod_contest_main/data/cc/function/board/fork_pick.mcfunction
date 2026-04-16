# @s = player
# @e[type=item_display,tag=this] player's board item_display
tag @e[type=item_display] remove this
execute as @e[type=item_display,tag=board_player] if score @s board_turn = .i board_turn run tag @s add this

# verify validity of player's choice to prevent going to nonexistent path
# this can be implemented later (or even never) as the choice can only be invalid if the player is deliberately fucking us up
#execute if score @s board_fork matches 1 at @e[type=item_display,tag=board_player] if score @s board_turn = .i board_turn if block ^1 ^2 ^ pink_concrete
#execute if score @s board_fork matches 2 at @e[type=item_display,tag=board_player] if score @s board_turn = .i board_turn if block ^ ^2 ^1 pink_concrete
#execute if score @s board_fork matches 3 at @e[type=item_display,tag=board_player] if score @s board_turn = .i board_turn if block ^-1 ^2 ^ pink_concrete
scoreboard players reset @s board_await

# move 1 space free b/c fork space doesn't consume step and then move
scoreboard players set .anim board_roll 15
execute if score @s board_fork matches 1 as @e[type=item_display,tag=this] at @s run tp @s ~ ~ ~ ~-90 0
execute if score @s board_fork matches 2 as @e[type=item_display,tag=this] at @s run tp @s ~ ~ ~ ~ 0
execute if score @s board_fork matches 3 as @e[type=item_display,tag=this] at @s run tp @s ~ ~ ~ ~90 0
#execute if score .steps board_roll matches 1.. as @e[type=item_display,tag=this] at @s run function cc:board/move
#tp @s @e[type=item_display,tag=this,limit=1]
scoreboard players reset @s board_fork

tag @e[type=item_display] remove this
# @e[type=item_display,tag=this] player's board item_display
tag @e[type=item_display] remove this
execute as @e[type=item_display,tag=board_player] if score @s board_turn = .i board_turn run tag @s add this

# pick last available path in reverse order (same behavior as first available in normal order; for parity between fallback types)
scoreboard players set .anim board_roll 15
execute if score valid.right board_fork matches 1 as @e[type=item_display,tag=this] at @s run tp @s ~ ~ ~ ~90 0
execute if score valid.forward board_fork matches 1 as @e[type=item_display,tag=this] at @s run tp @s ~ ~ ~ ~ 0
execute if score valid.left board_fork matches 1 as @e[type=item_display,tag=this] at @s run tp @s ~ ~ ~ ~-90 0

tag @e[type=item_display] remove this
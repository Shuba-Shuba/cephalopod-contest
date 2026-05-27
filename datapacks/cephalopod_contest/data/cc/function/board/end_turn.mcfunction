# @s DNE (scheduled function)
# @a[tag=this] = player whose turn is ending
# @e[type=item_display,tag=this] that player's board item_display
execute as @a[tag=!out] if score @s board_turn = .i board_turn run tag @s add this
execute as @e[type=item_display,tag=board_player] if score @s board_turn = .i board_turn run tag @s add this
gamemode spectator @a[tag=this]
effect clear @a[tag=this] glowing

# copy inventory onto item_display
execute as @p[tag=this] run function cc:board/save_items

# update score display
execute as @a[tag=this] run function cc:board/update_display

# make mannequin
# if turn was auto (player left), mannequin already exists
execute unless score .auto board_turn matches 1 as @e[type=item_display,tag=this] at @s run summon mannequin ~ ~ ~ {Tags:["init","board_player"],immovable:1b,Invulnerable:1b}
execute unless score .auto board_turn matches 1 rotated as @n[type=item_display,tag=this] run rotate @n[type=mannequin,tag=init] ~ ~
execute unless score .auto board_turn matches 1 run scoreboard players operation @n[type=mannequin,tag=init] board_turn = @p[tag=this] board_turn
execute unless score .auto board_turn matches 1 run data modify entity @n[type=mannequin,tag=init] profile.id set from entity @p[tag=this] UUID
execute unless score .auto board_turn matches 1 run tag @n[type=mannequin,tag=init] remove init
execute if score .auto board_turn matches 1 as @n[type=item_display,tag=this] on passengers run ride @s dismount

# find the next player
scoreboard players reset .found_player board_turn
execute store result score .found_player board_turn run function cc:board/find_next
execute if score .found_player board_turn matches 1 run schedule function cc:board/next_turn 2s
execute if score .found_player board_turn matches 0 if score .count board_turn < board.turns config run tellraw @a "minigame time"
execute if score .found_player board_turn matches 0 if score .count board_turn < board.turns config run schedule function cc:board/minigame 2s
execute if score .found_player board_turn matches 0 if score .count board_turn >= board.turns config run function cc:board/end

tag @e remove this
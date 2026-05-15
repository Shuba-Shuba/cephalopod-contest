# teleports each spectator to their item_display and spawns their mannequin unless they're offline
# @s = board item_display

# find player
scoreboard players operation .search board_turn = @s board_turn
execute as @a[tag=!out] if score @s board_turn = .search board_turn run tag @s add this

# do nothing if right player is not present
execute unless entity @a[tag=this] run tag @s remove this
execute unless entity @a[tag=this] run return fail

# teleport right player to item_display
tp @a[tag=this] ~ ~ ~

# if existing player mannequin (player rejoined), reuse it
execute as @e[type=mannequin,tag=board_player_placeholder] if score @s board_turn = .search board_turn run return run function cc:board/retrieve_player_reuse_mannequin

# else summon new mannequin
tag @s add this
summon mannequin ~ ~ ~ {Tags:["init","board_player"],immovable:1b,Invulnerable:1b}
execute rotated as @s run rotate @n[type=mannequin,tag=init] ~ ~
scoreboard players operation @n[type=mannequin,tag=init] board_turn = @n[type=item_display,tag=this] board_turn
data modify entity @n[type=mannequin,tag=init] profile.id set from entity @p[tag=this] UUID
tag @n[type=mannequin,tag=init] remove init

tag @s remove this
tag @a remove this
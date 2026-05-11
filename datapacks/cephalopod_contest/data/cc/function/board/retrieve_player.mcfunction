# returns spectators to their item_display and spawn an armor stand there
# @s = board item_display
tag @s add this

# teleport right player to item_display
execute as @a[tag=!out] if score @s board_turn = @n[type=item_display,tag=this] board_turn run tag @s add this
tp @a[tag=this] ~ ~ ~

# make mannequin
summon mannequin ~ ~ ~ {Tags:["init","board_player"],immovable:1b,Invulnerable:1b}
execute rotated as @s run rotate @n[type=mannequin,tag=init] ~ ~
scoreboard players operation @n[type=mannequin,tag=init] board_turn = @n[type=item_display,tag=this] board_turn
data modify entity @n[type=mannequin,tag=init] profile.id set from entity @p[tag=this] UUID
tag @n[type=mannequin,tag=init] remove init

tag @s remove this
tag @a remove this
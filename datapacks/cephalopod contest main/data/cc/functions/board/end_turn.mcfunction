# @s DNE (scheduled function)
# @a[tag=this] = player whose turn is ending
# @e[type=marker,tag=this] that player's board marker
execute as @a[tag=!out] if score @s board_turn = .i board_turn run tag @s add this
execute as @e[type=marker,tag=board_player] if score @s board_turn = .i board_turn run tag @s add this
gamemode spectator @a[tag=this]
effect clear @a[tag=this] glowing

# copy inventory onto marker
data modify entity @e[type=marker,tag=this,limit=1] data.Inventory set from entity @a[tag=this,limit=1] Inventory

# update score display
execute as @a[tag=this] run function cc:board/update_display

# make armor stand
execute as @e[type=marker,tag=this] at @s run summon armor_stand ~ ~ ~ {Tags:["init","board_player"],NoBasePlate:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,ShowArms:1b}
data modify entity @e[type=armor_stand,limit=1,sort=nearest,tag=init] Rotation set from entity @e[type=marker,tag=this,limit=1] Rotation
execute as @a[tag=this] run scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest,tag=init] board_turn = @s board_turn
execute as @a[tag=this] run loot replace entity @e[type=armor_stand,limit=1,sort=nearest,tag=init] armor.head loot cc:player_head
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=init] run data modify entity @s CustomName set from entity @s ArmorItems[3].tag.SkullOwner.Name
tag @e[type=armor_stand,limit=1,sort=nearest,tag=init] remove init

# find the next player
scoreboard players reset .found_player board_turn
execute store result score .found_player board_turn run function cc:board/find_next
execute if score .found_player board_turn matches 1 run schedule function cc:board/next_turn 2s
execute if score .found_player board_turn matches 0 if score .count board_turn < board.turns config run tellraw @a "minigame time"
execute if score .found_player board_turn matches 0 if score .count board_turn < board.turns config run schedule function cc:board/minigame 2s
execute if score .found_player board_turn matches 0 if score .count board_turn >= board.turns config run function cc:board/end

tag @e remove this
# $(name) = username of player who left
# @e[type=item_display,tag=this] player's board item_display
tag @e[type=item_display] remove this
execute as @e[type=item_display,tag=board_player] if score @s board_turn = .i board_turn run tag @s add this

# fallback actions are SIGNIFICANTLY harder to do here because the player entity no longer exists
$tellraw @a "$(name) left, finishing their turn automatically; their future turns will be skipped until they return"
scoreboard players set .auto board_turn 1

# summon placeholder mannequin
$summon mannequin ~ ~ ~ {Tags:["board_player_placeholder","init"],immovable:1b,Invulnerable:1b,CustomNameVisible:1b,CustomName:"$(name) (OFFLINE)",equipment:{head:{id:"zombie_head",count:1}}}
$scoreboard players operation @e[type=mannequin,limit=1,sort=nearest,tag=init] board_turn = $(name) board_turn
ride @n[type=mannequin,tag=init] mount @n[type=item_display,tag=this]
tag @e[type=mannequin] remove init

# auto-roll
execute if score .start board_roll matches 1 run function cc:board/roll

# auto-pick fork path
$execute if score $(name) board_await matches 1.. if score $(name) board_fork = $(name) board_fork run function cc:board/leave/fork {name:"$(name)"}

# auto-leave shop
$execute if score $(name) board_await matches 1.. if score $(name) board_shop = $(name) board_shop run function cc:board/leave/shop {name:"$(name)"}

tag @e[type=item_display] remove this
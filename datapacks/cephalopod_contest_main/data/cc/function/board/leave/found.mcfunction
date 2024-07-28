# $(name) = username of player who left
# fallback actions are SIGNIFICANTLY harder to do here because the player entity no longer exists
$tellraw @a "$(name) left, finishing their turn automatically; their future turns will be skipped until they return"
scoreboard players set .auto board_turn 1

# summon placeholder zombie to represent position
$summon zombie ~ ~ ~ {Tags:["board_player_placeholder","init"],NoAI:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"minecraft:turtle_helmet",count:1,components:{"minecraft:unbreakable":{}}}],CustomNameVisible:1b,CustomName:'"$(name) (OFFLINE)"'}
$scoreboard players operation @e[type=zombie,limit=1,sort=nearest,tag=init] board_turn = $(name) board_turn
tag @e[type=zombie] remove init

# auto-roll
execute if score .start board_roll matches 1 run function cc:board/roll

# auto-pick fork path
$execute if score $(name) board_await matches 1.. if score $(name) board_fork = $(name) board_fork run function cc:board/leave/fork {name:"$(name)"}

# auto-leave shop
$execute if score $(name) board_await matches 1.. if score $(name) board_shop = $(name) board_shop run function cc:board/leave/shop {name:"$(name)"}
# @s = player starting turn

# begin start phase
scoreboard players set .start board_roll 1
function cc:board/await_start {time:10}

# reveal player
tag @s add this
execute as @e[type=armor_stand,tag=board_player] if score @s board_turn = .i board_turn run kill @s
execute as @e[type=marker,tag=board_player] if score @s board_turn = .i board_turn at @s run tp @p[tag=this] @s
execute as @e[type=marker,tag=board_player] if score @s board_turn = .i board_turn at @s run playsound entity.evoker.prepare_wololo master @a ~ ~ ~ 2 1 1
gamemode adventure
effect give @s glowing infinite 0 true
tag @s remove this

# get items + dice
scoreboard players set .multiplier board_roll 1
function cc:board/get_items
give @s minecraft:magenta_glazed_terracotta[custom_name='{"text":"Roll Dice","italic":false}',custom_data={board:1}]

execute if entity @s[tag=glued] run function cc:board/roll
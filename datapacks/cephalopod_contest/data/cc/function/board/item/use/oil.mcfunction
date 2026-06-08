tellraw @a ["",{selector:"@s"}," placed an oil trap"]
clear @s carrot_on_a_stick[custom_data~{board:oil}] 1
function cc:board/await_start {time:10}

execute as @e[type=item_display,tag=board_player] if score @s board_turn = .i board_turn at @s run summon item_display ~ ~ ~ {Tags:["board_oil_trap"],item:{id:"black_dye",count:1},billboard:"center"}
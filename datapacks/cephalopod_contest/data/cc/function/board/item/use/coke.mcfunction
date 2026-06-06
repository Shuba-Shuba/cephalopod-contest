scoreboard players operation .multiplier board_roll *= 3 calc
tellraw @a ["",{selector:"@s"}," snorted coke, tripling their roll this turn\ntotal multiplier: x",{score:{name:".multiplier",objective:"board_roll"}}]
clear @s carrot_on_a_stick[custom_data~{board:coke}] 1
function cc:board/await_start {time:10}
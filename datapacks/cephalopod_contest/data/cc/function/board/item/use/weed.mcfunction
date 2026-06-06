scoreboard players operation .multiplier board_roll *= 2 calc
tellraw @a ["",{selector:"@s"}," smoked weed, doubling their roll this turn\ntotal multiplier: x",{score:{name:".multiplier",objective:"board_roll"}}]
clear @s carrot_on_a_stick[custom_data~{board:weed}] 1
function cc:board/await_start {time:10}
# @s = player
# wait for player's choice
function cc:board/await_start {time:10}
scoreboard players enable @s board_fork
tellraw @a ["",{selector:"@s"}," is picking a path"]
tellraw @s "pick a direction to travel in:"
execute store success score valid.left board_fork positioned ^1 ^-32 ^ if block ~ ~ ~ oak_wall_sign run tellraw @s [{text:"\n[",click_event:{action:"run_command",command:"/trigger board_fork set 1"}},{nbt:"front_text.messages[1]",interpret:true,block:"~ ~ ~",underlined:true},"]"]
execute store success score valid.forward board_fork positioned ^ ^-32 ^1 if block ~ ~ ~ oak_wall_sign run tellraw @s [{text:"\n[",click_event:{action:"run_command",command:"/trigger board_fork set 2"}},{nbt:"front_text.messages[1]",interpret:true,block:"~ ~ ~",underlined:true},"]"]
execute store success score valid.right board_fork positioned ^-1 ^-32 ^ if block ~ ~ ~ oak_wall_sign run tellraw @s [{text:"\n[",click_event:{action:"run_command",command:"/trigger board_fork set 3"}},{nbt:"front_text.messages[1]",interpret:true,block:"~ ~ ~",underlined:true},"]"]
# @s = player
# wait for player's choice
scoreboard players set @s board_await 200
#tag @s add await_fork
scoreboard players enable @s board_fork
tellraw @a ["",{"selector":"@s"}," is picking a path"]
tellraw @s "pick a direction to travel in:"
execute store success score valid.left board_fork if block ^1 ^-2 ^ pink_concrete run tellraw @s {"text":"\n[Left]","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger board_fork set 1"}}
execute store success score valid.forward board_fork if block ^ ^-2 ^1 pink_concrete run tellraw @s {"text":"\n[Forward]","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger board_fork set 2"}}
execute store success score valid.right board_fork if block ^-1 ^-2 ^ pink_concrete run tellraw @s {"text":"\n[Right]","underlined":true,"clickEvent":{"action":"run_command","value":"/trigger board_fork set 3"}}
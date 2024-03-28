# @s = player we're waiting for
scoreboard players remove @s board_await 1
scoreboard players add .clock board_await 1
scoreboard players operation .clock board_await %= integers.20 calc
execute if score .clock board_await matches 0 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1

# fork in path
execute if score @s board_fork matches 1..3 run function cc:board/fork_pick
execute unless score @s board_shop matches 0 if score @s board_shop matches -1.. run function cc:board/shop_click
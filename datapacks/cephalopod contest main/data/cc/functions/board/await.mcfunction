# @s = player we're waiting for
execute store result bossbar cc:time value run scoreboard players remove @s board_await 1

## clock
scoreboard players add .clock board_await 1
# visual
execute if score .clock board_await matches 20 run bossbar set cc:time players @a
execute if score .clock board_await matches 20 run scoreboard players remove .second board_await 1
execute if score .clock board_await matches 20 run bossbar set cc:time name {"score":{"objective":"board_await","name":".second"}}
# sound
execute if score .clock board_await matches 20 if score .second board_await matches ..5 as @a at @s run playsound minecraft:block.note_block.hat master @s ~ ~ ~ 1 1
scoreboard players operation .clock board_await %= integers.20 calc

## detect player action
# fork in path
execute if score @s board_fork matches 1..3 run function cc:board/fork_pick
# shop
execute unless score @s board_shop matches 0 if score @s board_shop matches -1.. run function cc:board/shop_click
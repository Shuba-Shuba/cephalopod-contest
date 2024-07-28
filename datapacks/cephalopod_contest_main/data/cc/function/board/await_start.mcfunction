# @s = player we will wait for
$execute store result score .second board_await run scoreboard players set @s board_await $(time)
execute store result bossbar cc:time max store result bossbar cc:time value run scoreboard players operation @s board_await *= integers.20 calc
scoreboard players set .clock board_await 0
bossbar set cc:time name {"score":{"objective":"board_await","name":".second"}}
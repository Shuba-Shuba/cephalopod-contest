scoreboard players set #bool game 0
execute align y if block ~ ~ ~ tinted_glass run scoreboard players set #bool game 1
execute align y if block ~ ~1 ~ tinted_glass run scoreboard players set #bool game 1
execute if score #bool game matches 0 run tp @s ~ ~ ~
execute if score #bool game matches 1 positioned ^ ^ ^0.2 run function cc:cloak_unstuck
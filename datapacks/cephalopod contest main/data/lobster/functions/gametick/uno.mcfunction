# clock
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. run function lobster:clock_sec

# uno stuff
execute as @a[tag=!out,tag=!ded] if score @s turn = .current turn run tag @s add turn
execute as @a[tag=!out,tag=!ded] unless score @s turn = .current turn run tag @s remove turn
execute store result score %players game if entity @a[tag=!out,tag=!ded]
scoreboard players operation .current turn %= %players game
execute as @a[scores={drop=1..}] at @s run function lobster:uno/drop
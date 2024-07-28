# clock
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. run function cc:clock_sec
execute if score %second game matches ..0 as @a[tag=button] at @s run function cc:bad_button

# button stuff
execute as @a[scores={button=1..}] run function cc:button
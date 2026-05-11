# clock
execute as @a[tag=!out,tag=!ded,tag=!winner] at @s if block ~ ~-1 ~ orange_concrete_powder run function cc:death
execute as @a[tag=!out,tag=!ded,tag=!winner] at @s if block ~ ~-1 ~ lime_stained_glass run function cc:death
execute as @a[tag=!out,tag=!ded,tag=!winner] at @s if block ~ ~-1 ~ light_blue_stained_glass run function cc:death
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. run function cc:clock_sec
execute if score %second game matches ..0 run function cc:end

# race stuff
execute as @a[tag=!out,tag=!ded] at @s if block ~ ~-1 ~ gold_block run tag @s add winner
effect give @a[tag=winner] weakness 1 255 true
execute unless entity @a[tag=!out,tag=!ded,gamemode=adventure,tag=!winner] unless score %second game matches ..0 run function cc:end
execute if block 107 63 -227 lever[powered=true] if block 107 63 -230 lever[powered=true] if block 107 63 -233 lever[powered=true] run function cc:make_key
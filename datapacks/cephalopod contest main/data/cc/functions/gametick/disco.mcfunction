# disco party
execute as @a[tag=!out,tag=!ded] at @s if block ~ ~ ~ lava run function cc:landed_no_kb
scoreboard players add .disco game 1
execute if score .disco game matches 0 as @a[tag=!out] at @s run playsound minecraft:block.piston.extend master @s
execute if score .disco game matches 0 if score %map game matches 0 in cc:void run fill -116 61 -116 -84 80 -84 stone outline
execute if score .disco game matches 0 run function cc:disco_build
execute if score .disco game = .disco.roll1 game run function cc:disco_build
execute if score .disco game = .disco.roll2 game run function cc:disco_build
execute if score .disco game = .disco.roll3 game run function cc:disco_build
execute if score .disco game = .disco.roll4 game run function cc:disco_wall
execute if score .disco game = .disco.remove game run function cc:disco_remove with storage cc:disco
execute if score .disco game = .disco.remove+20 game run function cc:disco_end

# end game if nobody is alive
execute unless entity @a[tag=!out,tag=!ded] run function cc:end
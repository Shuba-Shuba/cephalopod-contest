# end cameras
function cc:camera_end

# mode
scoreboard players set %mode game 18

# turn order
scoreboard players set .current turn -1
execute as @a[tag=!out,tag=!ded,sort=random] store result score @s turn run scoreboard players add .current turn 1
scoreboard players set .reverse turn 1
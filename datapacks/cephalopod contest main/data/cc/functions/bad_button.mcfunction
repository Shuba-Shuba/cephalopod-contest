fill 177 93 104 177 91 108 red_concrete
scoreboard players set @s button 0
scoreboard players set condition.ded button 1
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 0 1
tag @s add ded
function cc:landed
function cc:make_bad_button
execute in cc:void run setblock 173 89 110 warped_button[facing=west,face=floor]
execute in cc:void run setblock 173 89 108 warped_button[facing=west,face=floor]
execute in cc:void run setblock 173 89 106 warped_button[facing=west,face=floor]
execute in cc:void run setblock 173 89 104 warped_button[facing=west,face=floor]
execute in cc:void run setblock 173 89 102 warped_button[facing=west,face=floor]
scoreboard players set %presses button 0
scoreboard players set %choices button 5
function cc:next_press
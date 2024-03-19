fill 177 93 104 177 91 108 lime_concrete
scoreboard players set @s button 0
tag @s add safe
playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 2 1
tag @s add tmp_safe
tellraw @a [{"selector":"@s","color":"aqua"}," is safe."]
function cc:next_press
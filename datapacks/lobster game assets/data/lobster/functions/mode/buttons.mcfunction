# camera reset
function lobster:camera_end

# start round
scoreboard players set %mode game 5
execute store result bossbar lobster:time max run scoreboard players get time.buttons config
execute store result bossbar lobster:time value run scoreboard players get time.buttons config
scoreboard players operation %second game = time.buttons config
tag @a remove button
scoreboard players set @a button 0
tag @r[tag=!out,tag=!ded] add button
execute in sp:void run tp @a[tag=button] 177 88 106
execute in sp:void run function lobster:make_bad_button
scoreboard players set %presses button 0
scoreboard players set %choices button 5
scoreboard players set condition.ded button 0
scoreboard players set condition.press button 0
effect give @a[tag=!out] resistance infinite 255 true
gamerule fallDamage false

# choose map
execute if score %map game matches 0 in sp:void run tp @a[tag=!out,tag=!button] 166 86 106
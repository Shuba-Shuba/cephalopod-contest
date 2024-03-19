function lobster:make_bad_button
fill 177 93 104 177 91 108 black_concrete
setblock 173 89 110 warped_button[facing=west,face=floor]
setblock 173 89 108 warped_button[facing=west,face=floor]
setblock 173 89 106 warped_button[facing=west,face=floor]
setblock 173 89 104 warped_button[facing=west,face=floor]
setblock 173 89 102 warped_button[facing=west,face=floor]
scoreboard players set %presses button 0
scoreboard players set %choices button 5
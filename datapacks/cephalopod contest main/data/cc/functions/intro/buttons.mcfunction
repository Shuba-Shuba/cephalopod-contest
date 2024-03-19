# set amount of possible maps
scoreboard players set %map game 0

# start round
scoreboard players set %camera game 5
gamemode spectator @a[tag=!out]
scoreboard objectives setdisplay sidebar game
tp @a[tag=!out] 175 89 106
#tellraw @a "\nSussy Buttons:\nwhen it is your turn, press a button. if you are bad and RNGSUS decides to kill you, cry about it\n"
schedule function cc:mode/buttons 10s
execute in cc:void run fill 177 93 104 177 91 108 black_concrete
execute in cc:void run setblock 173 89 110 warped_button[facing=west,face=floor]
execute in cc:void run setblock 173 89 108 warped_button[facing=west,face=floor]
execute in cc:void run setblock 173 89 106 warped_button[facing=west,face=floor]
execute in cc:void run setblock 173 89 104 warped_button[facing=west,face=floor]
execute in cc:void run setblock 173 89 102 warped_button[facing=west,face=floor]
# kill camera entity(s)
kill @e[type=armor_stand,tag=camera]
kill @e[type=item_display,tag=camera]

# reset camera scores
scoreboard players set %camera game -1
scoreboard players set %camera1 game -1
scoreboard players set %camera2 game -1

# player reset
title @a[tag=!out] reset
gamemode adventure @a[tag=!out,tag=!ded]
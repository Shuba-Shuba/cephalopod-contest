# camera reset
function lobster:camera_end

# player setup
tag @a remove ded_boss
scoreboard players set %mode game 28
scoreboard players set .boss_setup game 1
bossbar set lobster:time players @a
bossbar set lobster:time max 15
bossbar set lobster:time value 15
scoreboard players set %second game 15
title @a[tag=!out] actionbar "Choose your class here"
clear @a[tag=!out]
effect clear @a[tag=!out]
effect give @a[tag=!out] weakness 15 255 true
effect give @a[tag=!out] resistance 15 255 true
effect give @a[tag=!out] invisibility 15 0 true
execute if score %map game matches 0 in minecraft:the_end run tp @a[tag=!out] -373 67 2
gamemode adventure @a[tag=!out,tag=!ded]
scoreboard players set @a[tag=!out,tag=!ded] boss_fight_class 0
# kill mobs
function cc:kill_mobs

# start arena fight
scoreboard players set %arena game 1
tellraw @a "\nArena:\nTime to fight! Whoever is the last person standing wins.\n"
execute in cc:chunk run forceload add 0 20 38 58
execute in cc:chunk run spreadplayers 18 38 3 8 under -60 false @a[tag=!out,tag=!ded]
execute in cc:chunk run place template minecraft:arena 0 -64 20

# remove all forceloads
execute in cc:chunk run forceload remove all
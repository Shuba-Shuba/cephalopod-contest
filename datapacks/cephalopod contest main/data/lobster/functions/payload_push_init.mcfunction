# loop movement
scoreboard players operation .payload_loop game = .payload game
scoreboard players add .payload_loop game 1
function lobster:payload_push_tick

# regen
effect give @a[team=blue,distance=..2] regeneration 1 1

# sfx
execute unless score .payload_sound game matches 1.. run playsound minecraft:entity.minecart.riding neutral @a
execute unless score .payload_sound game matches 1.. run scoreboard players set .payload_sound game 39
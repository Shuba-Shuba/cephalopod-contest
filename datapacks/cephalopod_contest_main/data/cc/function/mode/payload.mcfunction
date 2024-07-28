# camera reset
function cc:camera_end
execute if score %map game matches 0 in cc:void run tp @a[team=blue] 423.0 90 476.0
execute if score %map game matches 0 in cc:void run tp @a[team=red] 425 90 425
scoreboard players operation %second game = time.payload_setup config

# player setup
clear @a[tag=!out]
effect clear @a[tag=!out]
scoreboard players set %mode game 26
execute as @a[tag=!out,tag=!ded] at @s run function battle:kits/random

# summon payload cart
execute in cc:void run summon minecraft:armor_stand 427 90 472 {Rotation:[-90.0f,0.0f],CustomName:'"payload_cart.shb"',active_effects:[{id:"minecraft:glowing",duration:-1,amplifier:0b,show_particles:0b}],Marker:1b,NoBasePlate:1b,Invisible:1b,NoGravity:1b,Tags:["payload"],Passengers:[{id:"minecraft:furnace_minecart",CustomDisplayTile:1b,DisplayState:{Name:"minecraft:redstone_lamp",Properties:{lit:"false"}},DisplayOffset:4,Tags:["payload"],Invulnerable:1b}]}

# reset payload progress counter
scoreboard players set .payload_progress game 0
execute if score %map game matches 0 run bossbar set cc:time max 3740
scoreboard players set .payload_checkpoint game 0

# setup time
scoreboard players set .payload_setup game 1
execute if score %map game matches 0 in cc:void run fill 431 90 465 431 90 466 air
execute if score %map game matches 0 in cc:void run setblock 424 90 472 air
execute if score %map game matches 0 in cc:void run fill 423 98 477 422 98 477 air
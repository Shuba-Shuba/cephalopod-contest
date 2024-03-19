# camera reset
scoreboard players set %mode game 3
function cc:camera_end

# start round
effect give @a[tag=!out] resistance infinite 255 true
gamerule fallDamage false
execute store result bossbar cc:time max run scoreboard players get time.race config
execute store result bossbar cc:time value run scoreboard players get time.race config
scoreboard players operation %second game = time.race config
execute in cc:void run setblock 100 61 -214 redstone_block
execute in cc:void run setblock 100 62 -214 minecraft:iron_door[facing=south,hinge=right,half=lower,open=true,powered=true] replace
execute in cc:void run setblock 100 63 -214 minecraft:iron_door[facing=south,hinge=right,half=upper,open=true,powered=true] replace
execute in cc:void run setblock 107 63 -227 lever[face=wall,facing=west,powered=false]
execute in cc:void run setblock 107 63 -230 lever[face=wall,facing=west,powered=false]
execute in cc:void run setblock 107 63 -233 lever[face=wall,facing=west,powered=false]
execute in cc:void run fill 103 63 -224 105 65 -226 minecraft:lime_stained_glass_pane
execute in cc:void run fill 104 63 -225 104 65 -225 air
execute in cc:void run forceload add 103 -214
execute in cc:void positioned 103 63 -214 run kill @e[type=glow_item_frame,distance=..1,tag=shard]
execute in cc:void run summon glow_item_frame 103 63 -214 {Invisible:1b,Item:{id:"minecraft:amethyst_shard",Count:1b,tag:{shard:1b}},Facing:4b,Tags:["shard"]}

# choose map
execute if score %map game matches 0 in cc:void run tp @a[tag=!out] -4.0 74 -176 180 0
execute if score %map game matches 1 in cc:void run tp @a[tag=!out] 73 66 -162 180 0
execute if score %map game matches 2 in cc:void run tp @a[tag=!out] 9 73 -342 180 0
execute if score %map game matches 3 in cc:void run tp @a[tag=!out] 153.0 67 -261 180 0
execute if score %map game matches 4 in cc:void run tp @a[tag=!out] -307 64 333 -90 0
execute if score %map game matches 5 in cc:void run tp @a[tag=!out] 256 111 -293 180 0
execute if score %map game matches 6 in cc:void run tp @a[tag=!out] 510.0 134 623.0 0 10
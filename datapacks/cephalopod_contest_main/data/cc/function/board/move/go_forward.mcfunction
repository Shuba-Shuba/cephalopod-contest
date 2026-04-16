# y offset
execute rotated as @s run data modify storage cc:board dy set from block ^ ^-32 ^1 front_text.messages[0]
execute if data storage cc:board {dy:""} rotated as @s summon marker positioned ^ ^-32 ^2 run function cc:board/move/y_offset with storage cc:board
execute unless data storage cc:board {dy:""} rotated as @s summon marker positioned ~ ~-32 ~ run function cc:board/move/y_offset with storage cc:board

# find next space
execute rotated as @s as @n[type=marker,tag=tmp_next_space] positioned as @s run function cc:board/move/find_next

# calculate distance to next space
data modify storage cc:distance transformation set value [0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,1f]
execute store result score #x calc run data get entity @s Pos[0] 1000000
execute store result score #y calc run data get entity @s Pos[1] 1000000
execute store result score #z calc run data get entity @s Pos[2] 1000000
execute store result score #dx calc run data get entity @n[type=marker,tag=tmp_next_space] Pos[0] 1000000
execute store result score #dy calc run data get entity @n[type=marker,tag=tmp_next_space] Pos[1] 1000000
execute store result score #dz calc run data get entity @n[type=marker,tag=tmp_next_space] Pos[2] 1000000
execute if score #dx calc < #x calc run scoreboard players operation #dx calc >< #x calc
execute if score #dy calc < #y calc run scoreboard players operation #dy calc >< #y calc
execute if score #dz calc < #z calc run scoreboard players operation #dz calc >< #z calc
scoreboard players remove #dy calc 32000000
execute store result storage cc:distance transformation[0] float 0.000001 run scoreboard players operation #dx calc -= #x calc
execute store result storage cc:distance transformation[4] float 0.000001 run scoreboard players operation #dy calc -= #y calc
execute store result storage cc:distance transformation[8] float 0.000001 run scoreboard players operation #dz calc -= #z calc
data modify entity 0000000d-0109-0097-0116-000000000104 transformation set from storage cc:distance transformation
execute store result score .anim board_roll store result entity @s teleport_duration int 1 run data get entity 0000000d-0109-0097-0116-000000000104 transformation.scale[0] 3

# scheduled because teleport_duration desyncs otherwise
schedule function cc:board/move/tp 2t
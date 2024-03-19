# get xyz
execute store result score #x raycast run data get entity @s Pos[0] 1000000
execute store result score .y raycast run data get entity @s Pos[1] 1000000
execute store result score #z raycast run data get entity @s Pos[2] 1000000
scoreboard players remove #x raycast 337000000
scoreboard players remove #z raycast 767000000
scoreboard players operation .x raycast = #x raycast
scoreboard players operation .z raycast = #z raycast

# rotate 180 degrees
scoreboard players set -1 raycast -1
scoreboard players operation .x raycast *= -1 raycast
scoreboard players operation .z raycast *= -1 raycast
scoreboard players add .x raycast 335000000
scoreboard players add .y raycast 8000000
scoreboard players add .z raycast 782000000

# place marker
summon marker 337 142 767 {Tags:["tmp_elevator"]}
execute store result entity @e[type=marker,tag=tmp_elevator,limit=1] Pos[0] double 0.000001 run scoreboard players get .x raycast
execute store result entity @e[type=marker,tag=tmp_elevator,limit=1] Pos[1] double 0.000001 run scoreboard players get .y raycast
execute store result entity @e[type=marker,tag=tmp_elevator,limit=1] Pos[2] double 0.000001 run scoreboard players get .z raycast
execute positioned as @e[type=marker,tag=tmp_elevator,limit=1] run tp @s ~ ~ ~ ~180 ~
execute positioned as @e[type=marker,tag=tmp_elevator,limit=1] run playsound minecraft:entity.zombie.break_wooden_door master @s ~ ~ ~
tellraw @s "The elevator malfunctioned..."
kill @e[type=marker,tag=tmp_elevator]
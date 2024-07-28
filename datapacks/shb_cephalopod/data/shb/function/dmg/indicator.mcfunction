# parse json text
scoreboard players operation #tmp hp_dmg = @s hp_dmg
data modify block 0 -63 0 front_text.messages[2] set value '[{"text":"-","color":"red"},{"score":{"name":"#tmp","objective":"hp_dmg"}}]'

# rng
execute store result score .out prng run random value 0..7

# summon item
execute at @s run summon item ~ ~1 ~ {PickupDelay:100,Age:5990,Item:{id:"minecraft:red_dye",count:1},Tags:["dmg","load"]}
data modify entity @e[type=item,tag=load,limit=1] CustomName set from block 0 -63 0 Text3
execute if score .out prng matches 0 run data merge entity @e[type=item,tag=load,limit=1] {Motion:[0.1d,0.3d,0.1d],CustomNameVisible:1b}
execute if score .out prng matches 1 run data merge entity @e[type=item,tag=load,limit=1] {Motion:[0.0d,0.3d,0.1d],CustomNameVisible:1b}
execute if score .out prng matches 2 run data merge entity @e[type=item,tag=load,limit=1] {Motion:[-0.1d,0.3d,0.1d],CustomNameVisible:1b}
execute if score .out prng matches 3 run data merge entity @e[type=item,tag=load,limit=1] {Motion:[0.1d,0.3d,0.0d],CustomNameVisible:1b}
execute if score .out prng matches 4 run data merge entity @e[type=item,tag=load,limit=1] {Motion:[-0.1d,0.3d,0.0d],CustomNameVisible:1b}
execute if score .out prng matches 5 run data merge entity @e[type=item,tag=load,limit=1] {Motion:[0.1d,0.3d,-0.1d],CustomNameVisible:1b}
execute if score .out prng matches 6 run data merge entity @e[type=item,tag=load,limit=1] {Motion:[0.0d,0.3d,-0.1d],CustomNameVisible:1b}
execute if score .out prng matches 7 run data merge entity @e[type=item,tag=load,limit=1] {Motion:[-0.1d,0.3d,-0.1d],CustomNameVisible:1b}
tag @e[type=item] remove load
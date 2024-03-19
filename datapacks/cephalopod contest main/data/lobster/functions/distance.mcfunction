data modify storage lobster:distance transformation set value [0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,1f]
execute store result storage lobster:distance transformation[0] float 0.0000001 run data get entity @s Pos[0] 10000000
execute store result storage lobster:distance transformation[4] float 0.0000001 run data get entity @s Pos[1] 10000000
execute store result storage lobster:distance transformation[8] float 0.0000001 run data get entity @s Pos[2] 10000000
data modify entity 0000000d-0109-0097-0116-000000000104 transformation set from storage lobster:distance transformation
execute store result score .dist distance run data get entity 0000000d-0109-0097-0116-000000000104 transformation.scale[0] 1000
data modify storage lobster:distance distance set from entity 0000000d-0109-0097-0116-000000000104 transformation.scale[0]
tellraw @s ["distance: ",{"nbt":"distance","storage":"lobster:distance"}]
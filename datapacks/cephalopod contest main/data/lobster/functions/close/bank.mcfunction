scoreboard players set .bank heist 2
data merge block 239 123 790 {Text4:'"NO ENTRY"'}
fill 241 124 791 241 122 788 minecraft:polished_basalt[axis=y]
fill 241 122 790 241 124 789 minecraft:bone_block[axis=y]
playsound minecraft:block.piston.contract master @a 240 122 790 1 0.75 1
execute as @a[team=red] at @s positioned ~-240 ~-122 ~-790 if predicate lobster:elevator_generic run tp @s 243.0 122 790.0 -90 0
schedule function lobster:open/bank 60s
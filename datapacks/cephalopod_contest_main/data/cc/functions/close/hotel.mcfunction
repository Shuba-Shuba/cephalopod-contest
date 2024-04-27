scoreboard players set .hotel heist 2
data merge block 219 123 770 {Text4:'"NO ENTRY"'}
fill 221 122 772 221 124 769 minecraft:polished_basalt[axis=y]
fill 221 122 771 221 124 770 minecraft:bone_block[axis=y]
playsound minecraft:block.piston.contract master @a 220.0 122 770.0 1 0.75 1
execute as @a[team=red] at @s positioned ~-220 ~-122 ~-771 if predicate cc:elevator_generic run tp @s 268.0 122 771.0 90 0
schedule function cc:open/hotel 60s
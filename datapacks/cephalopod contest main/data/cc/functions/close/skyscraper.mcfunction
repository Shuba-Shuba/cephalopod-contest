scoreboard players set .skyscraper heist 2
data merge block 271 123 771 {Text4:'"NO ENTRY"'}
fill 269 124 769 269 122 772 minecraft:polished_basalt[axis=y]
fill 269 124 770 269 122 771 minecraft:bone_block[axis=y]
playsound minecraft:block.piston.contract master @a 269 122 771.0 1 0.75 1
tp @a[predicate=cc:elevator_skyscraper0,team=red] 268.0 122 771.0 90 0
schedule function cc:open/skyscraper 60s
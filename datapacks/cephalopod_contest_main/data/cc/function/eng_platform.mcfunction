tp @s @s
execute align y run fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 frosted_ice keep
execute align y run summon marker ~ ~-1 ~ {Tags:["spawn_platform"]}
playsound minecraft:block.piston.contract block @a[distance=..80] ~ ~ ~
clear @s iron_ingot 10
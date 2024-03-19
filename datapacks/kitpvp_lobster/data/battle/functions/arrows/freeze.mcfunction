# freezes all players within 5 blocks for 4 seconds

effect clear @s[type=!arrow,nbt={active_effects:[{id:"minecraft:water_breathing",amplifier:32b}]}] water_breathing
effect give @a[distance=..5] slowness 4 255 false
effect give @a[distance=..5] jump_boost 4 128 false


# prevent frozen player movement entirely

execute as @a[distance=..5,scores={freezetime=0}] at @s align xyz run tp ~0.5 ~ ~0.5
execute as @a[distance=..5.25,scores={freezetime=0}] at @s run summon marker ~ ~ ~ {Tags:["freezer"]}
scoreboard players add @e[distance=..5.25,tag=freezer,type=marker] freezetime 0
execute as @e[distance=..5.25,scores={freezetime=0},tag=freezer,type=marker] at @s run setblock ~ ~2 ~ ice keep
execute as @e[distance=..5.25,scores={freezetime=0},tag=freezer,type=marker] at @s run setblock ~ ~-1 ~ ice keep
execute as @e[distance=..5.25,scores={freezetime=0},tag=freezer,type=marker] at @s run fill ~1 ~ ~ ~1 ~1 ~ ice keep
execute as @e[distance=..5.25,scores={freezetime=0},tag=freezer,type=marker] at @s run fill ~-1 ~ ~ ~-1 ~1 ~ ice keep
execute as @e[distance=..5.25,scores={freezetime=0},tag=freezer,type=marker] at @s run fill ~ ~ ~1 ~ ~1 ~1 ice keep
execute as @e[distance=..5.25,scores={freezetime=0},tag=freezer,type=marker] at @s run fill ~ ~ ~-1 ~ ~1 ~-1 ice keep

# play sound once frozen

playsound minecraft:entity.ender_dragon.death master @a[distance=..5.25] ~ ~ ~ 0.25 2
title @a[distance=..5.25] title "FROZEN"
title @a[distance=..5.25] subtitle "Sponsored by Kellogg's"


# unfreeze players in 80 ticks (4 seconds)

execute as @e[distance=..5.25,scores={freezetime=0},tag=freezer,type=marker] at @s run scoreboard players set @s freezetime 80
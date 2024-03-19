execute rotated ~ 0 positioned ^ ^ ^2 positioned ~ ~-1 ~ run fill ~-1 ~ ~-1 ~1 ~ ~1 petrified_oak_slab[type=double] keep
execute rotated ~ 0 positioned ^ ^ ^2 positioned ~ ~-1 ~ run fill ~-1 ~ ~-1 ~1 ~ ~1 oak_slab[type=double] replace light[level=15]
execute rotated ~ 0 positioned ^ ^ ^2 positioned ~ ~-1 ~ align xyz run summon marker ~ ~ ~ {Tags:["tmp_floor","tmp_build"]}
scoreboard players set @s build_cd 80
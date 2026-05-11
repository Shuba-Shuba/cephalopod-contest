# get player rotation
execute as @a store result score @s tmp_yaw run data get entity @s Rotation[0] 1
scoreboard players add @a tmp_yaw 180
execute as @a run scoreboard players operation @s yaw = @s tmp_yaw

# decay builds
scoreboard players add @e[type=marker,tag=tmp_build] buildtime 1
execute as @e[type=marker,tag=tmp_floor,scores={buildtime=200..}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 air replace petrified_oak_slab
execute as @e[type=marker,tag=tmp_wallx,scores={buildtime=200..}] at @s run fill ~-1 ~ ~ ~1 ~2 ~ air replace petrified_oak_slab
execute as @e[type=marker,tag=tmp_wallz,scores={buildtime=200..}] at @s run fill ~ ~ ~-1 ~ ~2 ~1 air replace petrified_oak_slab
execute as @e[type=marker,tag=tmp_floor,scores={buildtime=200..}] at @s run fill ~-1 ~ ~-1 ~1 ~ ~1 light[level=15] replace oak_slab[type=double]
execute as @e[type=marker,tag=tmp_wallx,scores={buildtime=200..}] at @s run fill ~-1 ~ ~ ~1 ~2 ~ light[level=15] replace oak_slab[type=double]
execute as @e[type=marker,tag=tmp_wallz,scores={buildtime=200..}] at @s run fill ~ ~ ~-1 ~ ~2 ~1 light[level=15] replace oak_slab[type=double]
kill @e[type=marker,tag=tmp_build,scores={buildtime=200..}]

# build cooldown timer
scoreboard players remove @a[scores={build_cd=1..}] build_cd 1
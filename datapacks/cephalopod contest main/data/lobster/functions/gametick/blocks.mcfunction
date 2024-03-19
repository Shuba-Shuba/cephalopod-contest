 # clock
execute as @a[scores={deaths=1..},tag=!out,tag=!ded] run function lobster:death
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. run function lobster:clock_sec

# quick blocks stuff
execute as @a[gamemode=adventure] at @s if block ~ ~-1 ~ barrier run function lobster:landed_no_kb
execute at @e[type=marker,tag=tmp_blocks_copy] unless blocks ~ ~ ~ ~ ~2 ~2 200 164 1023 masked run tellraw @a ["LOL! ",{"selector":"@p[distance=..8,tag=!out,tag=!ded]"}," fucked the pattern up! :cold_face: :rofl: :sweating:"]
execute at @e[type=marker,tag=tmp_blocks_copy] unless blocks ~ ~ ~ ~ ~2 ~2 200 164 1023 masked as @p[distance=..8,tag=!out,tag=!ded] run function lobster:blocks_fall
execute at @e[type=marker,tag=tmp_blocks_copy] unless blocks ~ ~ ~ ~ ~2 ~2 200 164 1023 masked run fill ~ ~ ~ ~ ~2 ~2 air
execute at @e[type=marker,tag=tmp_blocks_copy] if blocks ~ ~ ~ ~ ~2 ~2 200 164 1023 all run tellraw @a [{"selector":"@p[distance=..8,tag=!out,tag=!ded,tag=!winner]"}," has finished."]
execute at @e[type=marker,tag=tmp_blocks_copy] if blocks ~ ~ ~ ~ ~2 ~2 200 164 1023 all run tag @p[distance=..8,tag=!out,tag=!ded,tag=!winner] add winner
execute at @e[type=marker,tag=tmp_blocks_copy] if blocks ~ ~ ~ ~ ~2 ~2 200 164 1023 all run scoreboard players remove %second game 10
execute at @e[type=marker,tag=tmp_blocks_copy] if blocks ~ ~ ~ ~ ~2 ~2 200 164 1023 all run fill ~ ~ ~ ~ ~2 ~2 air
execute store result score %players game if entity @a[tag=!winner,tag=!ded,tag=!out]
gamemode spectator @a[tag=winner]
execute if score %players game matches ..1 unless entity @a[tag=winner] run tag @a[tag=!winner,tag=!ded,tag=!out] add winner
execute if score %players game matches ..1 run function lobster:end
execute if score %second game matches ..0 run function lobster:end
## new rng
scoreboard players operation %5 prng = @e[type=marker,tag=mode_rng,tag=enabled,tag=!used,limit=1,sort=random] prng
execute as @e[type=marker,tag=mode_rng,tag=enabled] if score @s prng = %5 prng run tag @s add used

## if repeating is unavoidable (all enabled modes exhausted) OR if shard room (no modes enabled)
execute store result score #tmp game if entity @e[type=marker,tag=mode_rng,tag=enabled,tag=!used]
execute if score #tmp game matches 1 run tellraw @a "Reset list of exhausted gamemodes because repeating will be unavoidable after this round."
execute if score #tmp game matches 1 run tag @e[type=marker,tag=mode_rng] remove used
execute unless entity @e[type=marker,tag=mode_rng,tag=enabled] run scoreboard players set %5 prng 69

## reroll check
execute if score #tmp game matches ..1 run scoreboard players operation %premode game = %5 prng
execute unless score #tmp game matches ..1 unless score %5 prng = %prev_mode game run scoreboard players operation %premode game = %5 prng
execute unless score #tmp game matches ..1 if score %5 prng = %prev_mode game run tellraw @a "Rerolled RNG to prevent the same mode twice in a row."
execute unless score #tmp game matches ..1 if score %5 prng = %prev_mode game run function cc:next_round_rng
scoreboard players reset #tmp game

## [DEBUG] announce rng output
#tellraw @a[tag=debug] ["[DEBUG]: Mode RNG output = ",{"score":{"name":"%5","objective":"prng"}}]
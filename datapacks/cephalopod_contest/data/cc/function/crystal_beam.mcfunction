# point crystal beam at position
execute store result storage cc:crystal pos.X int 1 run data get entity @s Pos[0]
# ok so this 0.99 scalar essentially subtracts 1 from the Y value 2 times, this is because the crystal beam is skewed 2 blocks above the data point for some reason
execute store result storage cc:crystal pos.Y int 0.99 run data get entity @s Pos[1] 0.99
execute store result storage cc:crystal pos.Z int 1 run data get entity @s Pos[2]
execute as @e[type=end_crystal,tag=owned_crystal] run data modify entity @s BeamTarget set from storage cc:crystal pos

# count ticks to explode
scoreboard players add @s tag_time 1

# explode - 1 tnt per crystal, then untag
execute if score @s tag_time matches 30.. if entity @s[type=player] as @e[type=end_crystal,tag=owned_crystal] run summon tnt ~ ~2 ~ {fuse:4s,NoGravity:1b,Tags:["bedrock"]}
execute if score @s tag_time matches 30.. if entity @s[type=player] as @e[type=end_crystal,tag=owned_crystal] run summon tnt ~ ~2 ~ {fuse:4s,NoGravity:1b,Tags:["bedrock"]}
execute if score @s tag_time matches 30.. if entity @s[type=slime] as @e[type=end_crystal,tag=owned_crystal] run summon tnt ~ ~ ~ {fuse:4s,NoGravity:1b,Tags:["bedrock"]}
execute if score @s tag_time matches 30.. if entity @s[type=slime] as @e[type=end_crystal,tag=owned_crystal] run summon tnt ~ ~ ~ {fuse:4s,NoGravity:1b,Tags:["bedrock"]}
execute if score @s tag_time matches 30.. as @s[type=player] run function cc:untag_entity
execute if score @s tag_time matches 30.. run tp @s[type=slime] 0 -200 0
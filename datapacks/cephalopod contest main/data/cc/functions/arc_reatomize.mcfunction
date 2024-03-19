#tag @s add tnt_arc
#scoreboard players operation @s tagUUID0 = @s UUID0
#scoreboard players operation @s tagUUID1 = @s UUID1
#scoreboard players operation @s tagUUID2 = @s UUID2
#scoreboard players operation @s tagUUID3 = @s UUID3

# item on cooldown
clear @s eye_armor_trim_smithing_template{tnt:15b}
scoreboard players set @s reatomize_cd 160

# sound
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 0.75
execute at @e[type=end_crystal,tag=owned_crystal] run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 2

# hard tech
tp @s @s
#effect give @s levitation 1 0 false

# draw particle line from crystal to player
execute at @e[type=end_crystal,tag=owned_crystal] facing entity @s eyes positioned ^ ^ ^ run function cc:arc_reatomize_line

# summon 1 tnt per crystal
execute at @s as @e[type=end_crystal,tag=owned_crystal] run summon tnt ~ ~1.5 ~ {fuse:1s,NoGravity:1b}

# kill crystals
kill @e[type=end_crystal,tag=owned_crystal]

# tell spectators
execute if score @s crystal_count matches 1 run tellraw @a[tag=ded] ["",{"selector":"@s"}," used Decrystalize (",{"score":{"name":"@s","objective":"crystal_count"}}," crystal)"]
execute unless score @s crystal_count matches 1 run tellraw @a[tag=ded] ["",{"selector":"@s"}," used Decrystalize (",{"score":{"name":"@s","objective":"crystal_count"}}," crystals)"]
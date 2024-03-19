# item on cooldown
clear @s netherite_upgrade_smithing_template{tnt:14b} 1
scoreboard players set @s warp_cd 20

# teleport to tagged block/entity
execute positioned as @e[type=slime,tag=arc_tagged] run tp @s ~ ~1 ~
execute positioned as @a[tag=arc_tagged,limit=1] run tp @s ~ ~ ~ 
tp @s @s

# sound
execute at @s run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~

# tell spectators
execute store result score #tmp game run clear @s netherite_upgrade_smithing_template{tnt:14b} 0
tellraw @a[tag=ded] ["",{"selector":"@s"}," used Warp (",{"score":{"name":"#tmp","objective":"game"}}," remaining)"]
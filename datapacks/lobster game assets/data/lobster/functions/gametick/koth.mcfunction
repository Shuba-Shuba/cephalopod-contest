# clock
bossbar set lobster:time players @a
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. run function lobster:clock_sec
execute unless score %replay game matches 1.. run title @a[tag=!out,tag=!ded] actionbar ["KoTH Score: ",{"score":{"objective":"koth","name":"*"}}]
execute unless score %replay game matches 1.. if score %second game matches 0 if score %tick game matches 0 run function lobster:koth_end
execute if score %replay game matches 2 run function lobster:end

# koth stuff
execute if score %map game matches 0 as @a[tag=!out,tag=!ded] at @s if block ~ ~-1 ~ orange_terracotta run scoreboard players add @s koth 1
execute if score %map game matches 1 as @a[tag=!out,tag=!ded] at @s if block ~ ~-1 ~ bricks run scoreboard players add @s koth 1
execute if score %map game matches 2 as @a[tag=!out,tag=!ded] at @s if block ~ ~-1 ~ cyan_concrete run scoreboard players add @s koth 1
item replace entity @a[tag=!out,tag=!ded] armor.feet with netherite_boots{Enchantments:[{id:"minecraft:depth_strider",lvl:3}],Unbreakable:1b,display:{Name:'{"text":"Super Boots","italic":false}'},super_boots:1b}
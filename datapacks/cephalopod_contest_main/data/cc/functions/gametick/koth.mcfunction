# clock
bossbar set cc:time players @a
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players remove %second game 1
execute if score %tick game matches 20.. run function cc:clock_sec
execute unless score %replay game matches 1.. run title @a[tag=!out,tag=!ded] actionbar ["KoTH Score: ",{"score":{"objective":"koth","name":"*"}}]
execute unless score %replay game matches 1.. if score %second game matches 0 if score %tick game matches 0 run function cc:koth_end
execute if score %replay game matches 2 run function cc:end

# koth stuff
execute if score %map game matches 0 as @a[tag=!out,tag=!ded] at @s if block ~ ~-1 ~ orange_terracotta run scoreboard players add @s koth 1
execute if score %map game matches 1 as @a[tag=!out,tag=!ded] at @s if block ~ ~-1 ~ bricks run scoreboard players add @s koth 1
execute if score %map game matches 2 as @a[tag=!out,tag=!ded] at @s if block ~ ~-1 ~ cyan_concrete run scoreboard players add @s koth 1
item replace entity @a[tag=!out,tag=!ded] armor.feet with minecraft:netherite_boots[enchantments={"minecraft:depth_strider":3},unbreakable={},custom_name='{"text":"Super Boots","italic":false}',custom_data={super_boots:1b}]
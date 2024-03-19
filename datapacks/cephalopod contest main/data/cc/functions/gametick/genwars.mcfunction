# clock
execute as @a[scores={deaths=1..},tag=!out,tag=!ded] run function cc:death_genwars
execute as @a[tag=tmp_dead,predicate=cc:spawn] run function cc:death_genwars1
scoreboard players add %tick game 1
execute if score %tick game matches 20.. run scoreboard players add %second game 1
execute if score %tick game matches 20.. as @a[scores={death_time=0}] run function cc:respawn_genwars
execute if score %tick game matches 20.. as @a[scores={death_time=1..}] run function cc:death_time_genwars
execute if score %tick game matches 20.. run scoreboard players remove %diamond game 1
execute if score %tick game matches 20.. as @e[type=minecraft:text_display,tag=text_diamond] run data modify entity @s text set value '{"score":{"name":"%diamond","objective":"game"}}'
execute if score %tick game matches 20.. run scoreboard players remove %emerald game 1
execute if score %tick game matches 20.. as @e[type=minecraft:text_display,tag=text_emerald] run data modify entity @s text set value '{"score":{"name":"%emerald","objective":"game"}}'
execute if score %tick game matches 20.. run function cc:clock_min

## genwars stuff
# replace shops when struck by lightning
execute as @e[type=witch,name=Shop] at @s run setblock ~ ~-2 ~ redstone_block
kill @e[type=witch,name=Shop]

# resource generators
scoreboard players add @e[type=marker,tag=gen_forge] iron 1
scoreboard players add @e[type=marker,tag=gen_forge] gold 1
execute as @e[type=marker,tag=gen_forge,scores={gen_level=1}] if score @s iron >= gen.i1 config at @s run summon item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b,tag:{split:1b}},PickupDelay:10}
execute as @e[type=marker,tag=gen_forge,scores={gen_level=1}] if score @s iron >= gen.i1 config run scoreboard players set @s iron 0
execute as @e[type=marker,tag=gen_forge,scores={gen_level=1}] if score @s gold >= gen.g1 config at @s run summon item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:1b,tag:{split:1b}},PickupDelay:10}
execute as @e[type=marker,tag=gen_forge,scores={gen_level=1}] if score @s gold >= gen.g1 config run scoreboard players set @s gold 0
execute as @e[type=marker,tag=gen_forge,scores={gen_level=2}] if score @s iron >= gen.i2 config at @s run summon item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b,tag:{split:1b}},PickupDelay:10}
execute as @e[type=marker,tag=gen_forge,scores={gen_level=2}] if score @s iron >= gen.i2 config run scoreboard players set @s iron 0
execute as @e[type=marker,tag=gen_forge,scores={gen_level=2}] if score @s gold >= gen.g2 config at @s run summon item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:1b,tag:{split:1b}},PickupDelay:10}
execute as @e[type=marker,tag=gen_forge,scores={gen_level=2}] if score @s gold >= gen.g2 config run scoreboard players set @s gold 0
execute as @e[type=marker,tag=gen_forge,scores={gen_level=3..4}] if score @s iron >= gen.i3 config at @s run summon item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:1b,tag:{split:1b}},PickupDelay:10}
execute as @e[type=marker,tag=gen_forge,scores={gen_level=5}] if score @s iron >= gen.i3 config at @s run summon item ~ ~ ~ {Item:{id:"minecraft:iron_ingot",Count:2b,tag:{split:1b}},PickupDelay:10}
execute as @e[type=marker,tag=gen_forge,scores={gen_level=3..5}] if score @s iron >= gen.i3 config run scoreboard players set @s iron 0
execute as @e[type=marker,tag=gen_forge,scores={gen_level=3..4}] if score @s gold >= gen.g3 config at @s run summon item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:1b,tag:{split:1b}},PickupDelay:10}
execute as @e[type=marker,tag=gen_forge,scores={gen_level=5}] if score @s gold >= gen.g3 config at @s run summon item ~ ~ ~ {Item:{id:"minecraft:gold_ingot",Count:2b,tag:{split:1b}},PickupDelay:10}
execute as @e[type=marker,tag=gen_forge,scores={gen_level=3..5}] if score @s gold >= gen.g3 config run scoreboard players set @s gold 0
execute if score %diamond game matches 0 at @e[type=block_display,tag=gen_diamond] positioned ~ ~-3 ~ unless entity @e[type=item,nbt={Item:{id:"minecraft:diamond",Count:8b}},distance=..2] run summon item ~ ~3 ~ {Item:{id:"minecraft:diamond",Count:1b},PickupDelay:20}
execute if score %diamond game matches 0 if score %diamond gen_level matches 1 run scoreboard players operation %diamond game = gen.d1 config
execute if score %diamond game matches 0 if score %diamond gen_level matches 2 run scoreboard players operation %diamond game = gen.d2 config
execute if score %diamond game matches 0 if score %diamond gen_level matches 3 run scoreboard players operation %diamond game = gen.d3 config
execute if score %emerald game matches 0 at @e[type=block_display,tag=gen_emerald] run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1b},PickupDelay:20}
execute if score %emerald game matches 0 at @e[type=marker,tag=gen_forge,scores={gen_level=4}] run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:1b},PickupDelay:20}
execute if score %emerald game matches 0 at @e[type=marker,tag=gen_forge,scores={gen_level=5}] run summon item ~ ~ ~ {Item:{id:"minecraft:emerald",Count:2b},PickupDelay:20}
execute if score %emerald game matches 0 if score %emerald gen_level matches 1 run scoreboard players operation %emerald game = gen.e1 config
execute if score %emerald game matches 0 if score %emerald gen_level matches 2 run scoreboard players operation %emerald game = gen.e2 config
execute if score %emerald game matches 0 if score %emerald gen_level matches 3 run scoreboard players operation %emerald game = gen.e3 config

# split gen
execute as @a[scores={split_iron=1..}] at @s run function cc:split_iron
execute as @a[scores={split_gold=1..}] at @s run function cc:split_gold

# void instant kill
execute as @a at @s run kill @s[tag=!out,y=-80,dy=-100]

# upgrade check
execute as @a store result score @s armor_check run clear @s chainmail_chestplate{armor_level:2b}
execute as @a[scores={armor_check=1..}] run function cc:armor_chainmail
execute as @a store result score @s armor_check run clear @s iron_chestplate{armor_level:3b}
execute as @a[scores={armor_check=1..}] run function cc:armor_iron
execute as @a store result score @s armor_check run clear @s diamond_chestplate{armor_level:4b}
execute as @a[scores={armor_check=1..}] run function cc:armor_diamond
execute as @a store result score @s armor_check run clear @s enchanted_book{upgrade:1b}
execute as @a[scores={armor_check=1..}] run function cc:upgrade_sharp
execute as @a store result score @s armor_check run clear @s golden_pickaxe{upgrade:1b}
execute as @a[scores={armor_check=1..}] run function cc:upgrade_haste
execute as @a[predicate=cc:holding_unsharp_sword] run item modify entity @s weapon.mainhand cc:sharp
execute if score %red_haste upgrade_bool matches 1 run effect give @a[team=red] haste infinite 0 true
execute if score %blue_haste upgrade_bool matches 1 run effect give @a[team=blue] haste infinite 0 true
execute if score %green_haste upgrade_bool matches 1 run effect give @a[team=green] haste infinite 0 true
execute if score %yellow_haste upgrade_bool matches 1 run effect give @a[team=yellow] haste infinite 0 true

# bed breaking
execute as @a[tag=!out,tag=!ded,scores={break_red=1..}] run function cc:break_red
execute as @a[tag=!out,tag=!ded,scores={break_blue=1..}] run function cc:break_blue
execute as @a[tag=!out,tag=!ded,scores={break_green=1..}] run function cc:break_green
execute as @a[tag=!out,tag=!ded,scores={break_yellow=1..}] run function cc:break_yellow

# end of round
execute if entity @a[tag=!out,tag=!ded,team=red] unless entity @a[tag=!out,tag=!ded,team=!red] run tag @a[team=red] add winner
execute if entity @a[tag=!out,tag=!ded,team=blue] unless entity @a[tag=!out,tag=!ded,team=!blue] run tag @a[team=blue] add winner
execute if entity @a[tag=!out,tag=!ded,team=green] unless entity @a[tag=!out,tag=!ded,team=!green] run tag @a[team=green] add winner
execute if entity @a[tag=!out,tag=!ded,team=yellow] unless entity @a[tag=!out,tag=!ded,team=!yellow] run tag @a[team=yellow] add winner
execute if entity @a[tag=winner] unless score %replay game matches 1.. run scoreboard players set %replay_players game 1
execute if entity @a[tag=winner] unless score %replay game matches 1.. run function rep:play
execute if entity @a[tag=winner] if score %replay game matches 2 run function cc:end
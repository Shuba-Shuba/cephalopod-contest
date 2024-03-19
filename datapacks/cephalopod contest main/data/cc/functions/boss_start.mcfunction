# end setup time
scoreboard players set .boss_setup game 0

# show points
scoreboard objectives setdisplay sidebar boss_points

# get class contents from box
execute as @a[scores={boss_fight_class=0}] positioned -372 74 2 run function cc:boss_class_get
execute as @a[scores={boss_fight_class=1}] positioned -370 74 2 run function cc:boss_class_get
execute as @a[scores={boss_fight_class=2}] positioned -374 74 2 run function cc:boss_class_get
execute as @a[scores={boss_fight_class=3}] positioned -376 74 2 run function cc:boss_class_get

# class potion effects
effect give @a[scores={boss_fight_class=0}] speed infinite 0 false
effect give @a[scores={boss_fight_class=0}] jump_boost infinite 1 false

# announce classes
execute as @a[tag=!out,tag=!ded] run function cc:boss_class_say
execute if entity @a[tag=ded] run tellraw @a ["",{"selector":"@a[tag=ded]"}," spectating (LOL)"]

# teleport players
spreadplayers 0 0 20 30 under 70 false @a[tag=!out,tag=!ded]
gamemode survival @a[tag=!out,tag=!ded]
execute as @a[tag=ded] run tp @r[tag=!out,tag=!ded]

# summon crystals
summon minecraft:end_crystal -13 89 -40
summon minecraft:end_crystal 12 92 -40
summon minecraft:end_crystal 33 101 -25
summon minecraft:end_crystal 42 98 0
summon minecraft:end_crystal 34 86 24
summon minecraft:end_crystal 12 83 39
summon minecraft:end_crystal -13 95 39
summon minecraft:end_crystal -34 77 24
summon minecraft:end_crystal -42 80 -1
summon minecraft:end_crystal -34 104 -25

# summon dragon
summon minecraft:ender_dragon 0 80 0 {DragonPhase:0}

# setup health bar
bossbar set cc:time color pink
bossbar set cc:time max 200
bossbar set cc:time name "Ender Dragon"
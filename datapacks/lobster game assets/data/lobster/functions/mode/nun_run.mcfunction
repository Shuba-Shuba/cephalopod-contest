# camera reset
function lobster:camera_end
scoreboard players set %mode game 9

# start round
execute in sp:void if score %map game matches 0 run tp @a[tag=!out] -238.0 99 687.0
#execute in sp:void if score %map game matches 1 run tp @a[tag=!out] -683.0 110 711.0
execute in sp:void if score %map game matches 1 run tp @a[tag=!out] -956 113 633
give @a[team=global] stick{Enchantments:[{id:"knockback",lvl:1}]}
kill @e[type=vex]
kill @e[type=ravager]
execute in sp:void run forceload add -203 684
execute in sp:void run summon minecraft:ravager -203 94 684 {CustomName:'[{"text":"Lucifer\'s Dog","bold":true,"underlined":true,"italic":true,"color":"dark_red"}]',CustomNameVisible:1b,Health:100,Invulnerable:1b,active_effects:[{id:"minecraft:resistance",duration:100000,amplifier:3,show_particles:0b},{id:"minecraft:speed",duration:100,amplifier:4,show_particles:0b}],HandItems:[{id:"bow",Count:1},{id:"spectral_arrow",Count:1}],HandDropChances:[1f,1f],Attributes:[{Name:"generic.max_health",Base:100d},{Name:"zombie.spawn_reinforcements",Base:1d}]}
execute in sp:void run forceload add -243 697
execute in sp:void positioned -243 91 697 run kill @e[type=glow_item_frame,distance=..1,tag=shard]
execute in sp:void run summon minecraft:glow_item_frame -243 91 697 {Facing:5b,Invisible:1b,Item:{id:"minecraft:prismarine_shard",Count:1b,tag:{shard:1b}},Tags:["shard"]}
execute in sp:void run setblock -201 95 690 lever[face=wall,facing=west,powered=false] destroy
execute in sp:void run fill -204 96 688 -202 94 688 minecraft:iron_bars destroy
team modify global friendlyFire false
time set midnight
scoreboard players set @a prayers 0
scoreboard players set @a kills 0
scoreboard players set %team game 1
scoreboard objectives setdisplay sidebar prayers
#tellraw @a "\nNun Run:\nSomeone is the nun, and they are teamed against everyone else. Everyone else needs to pray, and whoever prays the least loses. You can do this by repeatedly sneaking/unsneaking on green froglights. However, this will make you glow and the nun will see you. The nun's job is to MURDER EVERYONE. If you get killed, you also lose.\n"
execute unless score time.nun_run config matches 11.. run tellraw @a "Reset nun run time to 180 seconds because it was set to under 11 seconds"
execute unless score time.nun_run config matches 11.. run scoreboard players set time.nun_run config 180
execute store result bossbar lobster:time max run scoreboard players get time.nun_run config
execute store result bossbar lobster:time value run scoreboard players get time.nun_run config
scoreboard players operation %second game = time.nun_run config
tag @a remove nun
tag @r[tag=!out,tag=!ded] add nun
execute in sp:void if score %map game matches 0 run tp @a[tag=nun] -154.0 83 690.0
execute in sp:void if score %map game matches 1 run tp @a[tag=nun] -683.0 110 809.0 0 0
#tellraw @a [{"selector":"@a[tag=nun,limit=1]","color":"red"}," is the nun"]
tellraw @a [{"selector":"@a[tag=nun]","color":"red"}," is the nun"]
scoreboard players set @a[tag=nun] ability 0
scoreboard players set @a[tag=nun] offhand_carrot 1
schedule function lobster:nun_spawn_start 10s
scoreboard players set rep.recording config 1
effect give @a[tag=!out] regeneration infinite 1 true
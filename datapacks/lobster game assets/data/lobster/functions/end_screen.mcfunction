# setup end screen
schedule function lobster:lobby 10s
scoreboard players set %mode game -2
scoreboard players set %end rotation 0
gamemode spectator @a[tag=!out]
tp @a[tag=!out] -3 201 3 -135 25
summon item_display -3 201 3 {view_range:0f,item:{id:"minecraft:air",Count:1b},Tags:["camera"]}
execute as @a[tag=!out] run ride @s mount @e[type=armor_stand,tag=camera,limit=1]
effect clear @a[tag=!out]

# sounds
playsound minecraft:custom.bensound_full record @a[tag=!out] 0 201 0 1 1 1

# armor stand
kill @e[type=armor_stand,tag=end_screen]
execute if score %winners game matches 2.. in sp:void as @a[tag=winner] run function lobster:end_screen_stack
execute if score %winners game matches 1 in sp:void run summon armor_stand 0 200 0 {ShowArms:1b,Tags:["end_screen"],Rotation:[45.0f,0.0f],HandItems:[{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:3}},{id:"minecraft:shield",Count:1b,tag:{Damage:0}}],Pos:[0.5d,200.0d,0.5d],Fire:-1s,ArmorItems:[{id:"minecraft:leather_boots",Count:1b,tag:{Damage:0}},{id:"minecraft:leather_leggings",Count:1b,tag:{Damage:0}},{id:"minecraft:leather_chestplate",Count:1b,tag:{Damage:0}},{id:"minecraft:player_head",Count:1b}],Pose:{LeftArm:[0f,0f,-5f],RightArm:[0f,0f,5f]},NoBasePlate:1b}
execute if score %winners game matches 1.. in sp:void run setblock 0 200 0 air
execute if score %winners game matches 0 in sp:void run setblock 0 200 0 birch_sign[rotation=2]{front_text:{messages:['""','{"text":"Unexpected item"}','{"text":"in bagging area"}','""']}}

# titles
execute if score %winners game matches 1 as @a[tag=winner] run item modify entity @e[type=minecraft:armor_stand,tag=end_screen] armor.head lobster:head
execute if score %winners game matches 2.. run title @a[tag=!out] title [{"score":{"name":"%winners","objective":"game"},"color":"green"}," people"]
execute if score %winners game matches 1 run title @a[tag=!out] title [{"selector":"@a[tag=winner,limit=1]"}]
execute if score %winners game matches 0 run title @a[tag=!out] title "Fucking nobody"
execute if score %winners game matches 0..1 run title @a[tag=!out] subtitle "has won the game!"
execute if score %winners game matches 2.. run title @a[tag=!out] subtitle "have won the game!"
tag @a[tag=!out] remove winner
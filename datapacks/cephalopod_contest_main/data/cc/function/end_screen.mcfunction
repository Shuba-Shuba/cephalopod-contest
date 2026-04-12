# setup end screen
schedule function cc:lobby 10s
scoreboard players set %mode game -2
scoreboard players set %end rotation 0
gamemode spectator @a[tag=!out]
tp @a[tag=!out] -3 201 3 -135 25
summon item_display -3 201 3 {view_range:0.0f,item:{id:"minecraft:air",count:1b},Tags:["camera"]}
execute as @a[tag=!out] run ride @s mount @e[type=item_display,tag=camera,limit=1]
effect clear @a[tag=!out]

# sounds
playsound minecraft:custom.bensound_full record @a[tag=!out] 0 201 0 1 1 1

# armor stand
kill @e[type=mannequin,tag=end_screen]
execute if score %winners game matches 2.. in cc:void as @a[tag=winner] run function cc:end_screen_stack
execute if score %winners game matches 1 in cc:void run summon mannequin 0 200 0 {Rotation:[45f,0f],Tags:["end_screen"],NoGravity:true}
execute if score %winners game matches 1 as @a[tag=winner] run data modify entity @n[type=mannequin,tag=end_screen] profile.id set from entity @s UUID
execute if score %winners game matches 1.. in cc:void run setblock 0 200 0 air
execute if score %winners game matches 0 in cc:void run setblock 0 200 0 birch_sign[rotation=2]{front_text:{messages:["",{text:"Unexpected item"},{text:"in bagging area"},""]}}

# titles
execute if score %winners game matches 2.. run title @a[tag=!out] title [{score:{name:"%winners",objective:"game"},color:"green"}," people"]
execute if score %winners game matches 1 run title @a[tag=!out] title [{"selector":"@a[tag=winner,limit=1]"}]
execute if score %winners game matches 0 run title @a[tag=!out] title "Fucking nobody"
execute if score %winners game matches 0..1 run title @a[tag=!out] subtitle "has won the game!"
execute if score %winners game matches 2.. run title @a[tag=!out] subtitle "have won the game!"
tag @a[tag=!out] remove winner
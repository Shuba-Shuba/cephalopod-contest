# camera reset
function lobster:camera_end
execute if score %map game matches 0 in sp:void run tp @a[team=blue] 350 90 424
execute if score %map game matches 0 in sp:void run tp @a[team=red] 413 90 486
execute store result bossbar lobster:time max run scoreboard players operation %second game = time.cs_setup config

# player setup
clear @a[tag=!out]
effect clear @a[tag=!out]
scoreboard players set %mode game 27
give @a[tag=!out,tag=!ded] iron_sword{Unbreakable:1b,Enchantments:[{id:"sharpness",lvl:1}],CustomModelData:3,display:{Name:'{"text":"Knife","italic":false}'},AttributeModifiers:[{Name:"Knife speed bonus",AttributeName:"generic.movement_speed",Amount:0.2,Operation:1,Slot:"mainhand",UUID:[I;344585698,-954845675,395484598,-349874594]}]}
give @a[tag=!out,tag=!ded] emerald 5
item replace entity @a[team=red] armor.head with leather_helmet{Unbreakable:1b,display:{color:16711680}}
item replace entity @a[team=red] armor.chest with leather_chestplate{Unbreakable:1b,display:{color:16711680}}
item replace entity @a[team=red] armor.legs with leather_leggings{Unbreakable:1b,display:{color:16711680}}
item replace entity @a[team=red] armor.feet with leather_boots{Unbreakable:1b,display:{color:16711680}}
item replace entity @a[team=blue] armor.head with leather_helmet{Unbreakable:1b,display:{color:6911}}
item replace entity @a[team=blue] armor.chest with leather_chestplate{Unbreakable:1b,display:{color:6911}}
item replace entity @a[team=blue] armor.legs with leather_leggings{Unbreakable:1b,display:{color:6911}}
item replace entity @a[team=blue] armor.feet with leather_boots{Unbreakable:1b,display:{color:6911}}
effect give @a[tag=!out,tag=!ded] regeneration infinite 0 true
tag @r[team=blue] add tmp_bomb
give @a[tag=tmp_bomb] tnt{CanPlaceOn:["minecraft:ochre_froglight"]}
tellraw @a[team=blue] [{"selector":"@a[tag=tmp_bomb]"}," has the bomb"]
tag @a remove tmp_bomb
scoreboard players set @a defuse 0
xp set @a 0 points

# setup time
scoreboard players set .cs_setup game 1
scoreboard players set .cs_bomb game 0
scoreboard players set .cs_bomb_fuse game 0
execute if score %map game matches 0 in sp:void run setblock 352 90 425 air
execute if score %map game matches 0 in sp:void run setblock 410 90 486 air
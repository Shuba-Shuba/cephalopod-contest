# camera reset
function cc:camera_end
execute if score %map game matches 0 in cc:void run tp @a[team=blue] 350 90 424
execute if score %map game matches 0 in cc:void run tp @a[team=red] 413 90 486
execute store result bossbar cc:time max run scoreboard players operation %second game = time.cs_setup config

# player setup
clear @a[tag=!out]
effect clear @a[tag=!out]
scoreboard players set %mode game 27
give @a[tag=!out,tag=!ded] minecraft:iron_sword[unbreakable={},enchantments={sharpness:1},custom_model_data=3,custom_name='{"text":"Knife","italic":false}',attribute_modifiers=[{operation:"add_multiplied_base",type:"generic.movement_speed",amount:0.2d,slot:"mainhand",name:"Knife speed bonus",uuid:[I;344585698,-954845675,395484598,-349874594]}]]
give @a[tag=!out,tag=!ded] emerald 5
item replace entity @a[team=red] armor.head with minecraft:leather_helmet[unbreakable={},dyed_color=16711680]
item replace entity @a[team=red] armor.chest with minecraft:leather_chestplate[unbreakable={},dyed_color=16711680]
item replace entity @a[team=red] armor.legs with minecraft:leather_leggings[unbreakable={},dyed_color=16711680]
item replace entity @a[team=red] armor.feet with minecraft:leather_boots[unbreakable={},dyed_color=16711680]
item replace entity @a[team=blue] armor.head with minecraft:leather_helmet[unbreakable={},dyed_color=6911]
item replace entity @a[team=blue] armor.chest with minecraft:leather_chestplate[unbreakable={},dyed_color=6911]
item replace entity @a[team=blue] armor.legs with minecraft:leather_leggings[unbreakable={},dyed_color=6911]
item replace entity @a[team=blue] armor.feet with minecraft:leather_boots[unbreakable={},dyed_color=6911]
effect give @a[tag=!out,tag=!ded] regeneration infinite 0 true
tag @r[team=blue] add tmp_bomb
give @a[tag=tmp_bomb] minecraft:tnt[can_place_on={blocks:"minecraft:ochre_froglight"}]
tellraw @a[team=blue] [{"selector":"@a[tag=tmp_bomb]"}," has the bomb"]
tag @a remove tmp_bomb
scoreboard players set @a defuse 0
xp set @a 0 points

# setup time
scoreboard players set .cs_setup game 1
scoreboard players set .cs_bomb game 0
scoreboard players set .cs_bomb_fuse game 0
execute if score %map game matches 0 in cc:void run setblock 352 90 425 air
execute if score %map game matches 0 in cc:void run setblock 410 90 486 air
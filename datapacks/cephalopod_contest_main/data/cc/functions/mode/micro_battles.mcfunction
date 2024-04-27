# camera reset
function cc:camera_end

clear @a[tag=!out]
effect clear @a[tag=!out]
scoreboard players set %mode game 25
bossbar set cc:time value 0
scoreboard players set %second game 0

scoreboard players set %team game 1
function cc:team_split4
execute in cc:void if score %map game matches 0 run tp @a[team=red] 274 4 -816
execute in cc:void if score %map game matches 0 run tp @a[team=blue] 274 4 -826
execute in cc:void if score %map game matches 0 run tp @a[team=green] 284 4 -826
execute in cc:void if score %map game matches 0 run tp @a[team=yellow] 284 4 -816

item replace entity @a[tag=!out,tag=!ded] armor.head with minecraft:leather_helmet[unbreakable={}]
item replace entity @a[tag=!out,tag=!ded] armor.chest with minecraft:leather_chestplate[unbreakable={}]
item replace entity @a[tag=!out,tag=!ded] armor.legs with minecraft:leather_leggings[unbreakable={}]
item replace entity @a[tag=!out,tag=!ded] armor.feet with minecraft:leather_boots[unbreakable={}]
give @a[tag=!out,tag=!ded] minecraft:stone_sword[unbreakable={}]
give @a[tag=!out,tag=!ded] minecraft:bow[unbreakable={}]
give @a[tag=!out,tag=!ded] cooked_beef 8
give @a[tag=!out,tag=!ded] minecraft:stone_pickaxe[unbreakable={}]
give @a[tag=!out,tag=!ded] minecraft:stone_axe[unbreakable={},attribute_modifiers=[{operation:"add_value",type:"generic.attack_damage",amount:4,slot:"mainhand",name:"generic.attack_damage",uuid:[I;776286035,-504082789,-2129675992,-1954647911]}]]
give @a[tag=!out,tag=!ded] minecraft:stone_shovel[unbreakable={}]
give @a[tag=!out,tag=!ded] arrow 3
execute if score %map game matches 0 run forceload remove 250 -850 310 -790
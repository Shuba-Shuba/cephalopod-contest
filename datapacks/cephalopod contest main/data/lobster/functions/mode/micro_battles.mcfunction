# camera reset
function lobster:camera_end

clear @a[tag=!out]
effect clear @a[tag=!out]
scoreboard players set %mode game 25
bossbar set lobster:time value 0
scoreboard players set %second game 0

scoreboard players set %team game 1
function lobster:team_split4
execute in sp:void if score %map game matches 0 run tp @a[team=red] 274 4 -816
execute in sp:void if score %map game matches 0 run tp @a[team=blue] 274 4 -826
execute in sp:void if score %map game matches 0 run tp @a[team=green] 284 4 -826
execute in sp:void if score %map game matches 0 run tp @a[team=yellow] 284 4 -816

item replace entity @a[tag=!out,tag=!ded] armor.head with leather_helmet{Unbreakable:1b}
item replace entity @a[tag=!out,tag=!ded] armor.chest with leather_chestplate{Unbreakable:1b}
item replace entity @a[tag=!out,tag=!ded] armor.legs with leather_leggings{Unbreakable:1b}
item replace entity @a[tag=!out,tag=!ded] armor.feet with leather_boots{Unbreakable:1b}
give @a[tag=!out,tag=!ded] stone_sword{Unbreakable:1b}
give @a[tag=!out,tag=!ded] bow{Unbreakable:1b}
give @a[tag=!out,tag=!ded] cooked_beef 8
give @a[tag=!out,tag=!ded] stone_pickaxe{Unbreakable:1b}
give @a[tag=!out,tag=!ded] stone_axe{Unbreakable:1b,AttributeModifiers:[{AttributeName:"generic.attack_damage",Name:"generic.attack_damage",Amount:4,Operation:0,UUID:[I;776286035,-504082789,-2129675992,-1954647911],Slot:"mainhand"}]}
give @a[tag=!out,tag=!ded] stone_shovel{Unbreakable:1b}
give @a[tag=!out,tag=!ded] arrow 3
execute if score %map game matches 0 run forceload remove 250 -850 310 -790
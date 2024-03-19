# camera reset
function lobster:camera_end

# start round
scoreboard players set %mode game 22
bossbar set lobster:time max 60
bossbar set lobster:time value 0
scoreboard players set %second game 0
scoreboard players set @e[type=marker,tag=gen_forge] iron 0
scoreboard players set @e[type=marker,tag=gen_forge] gold 0
scoreboard players set @e[type=marker,tag=gen_forge] gen_level 1
scoreboard players set %diamond gen_level 1
scoreboard players set %emerald gen_level 1
scoreboard players operation %diamond game = gen.d1 config
scoreboard players operation %emerald game = gen.e1 config
scoreboard players set @a[tag=!out] armor_level 1
scoreboard players set %red armor_level 1
scoreboard players set %blue armor_level 1
scoreboard players set %green armor_level 1
scoreboard players set %yellow armor_level 1
scoreboard players set %red armor_check 5
scoreboard players set %blue armor_check 5
scoreboard players set %green armor_check 5
scoreboard players set %yellow armor_check 5
scoreboard players set %red gen_check 4
scoreboard players set %blue gen_check 4
scoreboard players set %green gen_check 4
scoreboard players set %yellow gen_check 4
scoreboard players set @a[tag=!out] break_red 0
scoreboard players set @a[tag=!out] break_blue 0
scoreboard players set @a[tag=!out] break_green 0
scoreboard players set @a[tag=!out] break_yellow 0
scoreboard players set %red_sharp upgrade_bool 0
scoreboard players set %blue_sharp upgrade_bool 0
scoreboard players set %green_sharp upgrade_bool 0
scoreboard players set %yellow_sharp upgrade_bool 0
scoreboard players set %red_haste upgrade_bool 0
scoreboard players set %blue_haste upgrade_bool 0
scoreboard players set %green_haste upgrade_bool 0
scoreboard players set %yellow_haste upgrade_bool 0
execute at @e[type=marker,tag=upgrade_forge] run data modify block ~ ~ ~ front_text.messages[2] set value '"Cost: 4 Diamonds"'
execute at @e[type=marker,tag=upgrade_armor] run data modify block ~ ~ ~ front_text.messages[2] set value '"Cost: 5 Diamonds"'
item replace entity @a[tag=!out,tag=!ded] armor.head with leather_helmet{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:1}
item replace entity @a[tag=!out,tag=!ded] armor.chest with leather_chestplate{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:1}
item replace entity @a[tag=!out,tag=!ded] armor.legs with leather_leggings{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:1}
item replace entity @a[tag=!out,tag=!ded] armor.feet with leather_boots{Unbreakable:1b,Enchantments:[{id:"minecraft:binding_curse",lvl:1}],HideFlags:1}
item replace entity @a[tag=!out,tag=!ded] hotbar.0 with wooden_sword{Unbreakable:1b,CanDestroy:["#lobster:placeable"],HideFlags:8}
scoreboard players set rep.recording config 1
execute as @a[tag=!out,tag=!ded] run function lobster:clear_enderchest

# choose map
scoreboard players set %team game 1
function lobster:team_split4
execute in sp:void if score %map game matches 0 run tp @a[team=red] 1000 -50 -227 180 0
execute in sp:void if score %map game matches 0 run tp @a[team=blue] 1000 -50 -273 0 0
execute in sp:void if score %map game matches 0 run tp @a[team=green] 1023 -50 -250 90 0
execute in sp:void if score %map game matches 0 run tp @a[team=yellow] 977 -50 -250 270 0
execute in sp:void if score %map game matches 1 run tp @a[team=red] 1378 -45 -232 90 0
execute in sp:void if score %map game matches 1 run tp @a[team=blue] 1257 -45 -231 270 0
execute in sp:void if score %map game matches 1 run tp @a[team=green] 1317 -45 -295 0 0
execute in sp:void if score %map game matches 1 run tp @a[team=yellow] 1317 -46 -171 180 0
execute in sp:void if score %map game matches 0 run setblock 1000 -50 -230 red_bed[part=foot,facing=south]
execute in sp:void if score %map game matches 0 run setblock 1000 -50 -229 red_bed[part=head,facing=south]
execute in sp:void if score %map game matches 0 run setblock 1000 -50 -270 blue_bed[part=foot,facing=north]
execute in sp:void if score %map game matches 0 run setblock 1000 -50 -271 blue_bed[part=head,facing=north]
execute in sp:void if score %map game matches 0 run setblock 1020 -50 -250 green_bed[part=foot,facing=east]
execute in sp:void if score %map game matches 0 run setblock 1021 -50 -250 green_bed[part=head,facing=east]
execute in sp:void if score %map game matches 0 run setblock 980 -50 -250 yellow_bed[part=foot,facing=west]
execute in sp:void if score %map game matches 0 run setblock 979 -50 -250 yellow_bed[part=head,facing=west]
execute in sp:void if score %map game matches 1 run setblock 1370 -45 -232 red_bed[part=foot,facing=east]
execute in sp:void if score %map game matches 1 run setblock 1371 -45 -232 red_bed[part=head,facing=east]
execute in sp:void if score %map game matches 1 run setblock 1265 -45 -231 blue_bed[part=foot,facing=west]
execute in sp:void if score %map game matches 1 run setblock 1264 -45 -231 blue_bed[part=head,facing=west]
execute in sp:void if score %map game matches 1 run setblock 1317 -45 -287 green_bed[part=foot,facing=north]
execute in sp:void if score %map game matches 1 run setblock 1317 -45 -288 green_bed[part=head,facing=north]
execute in sp:void if score %map game matches 1 run setblock 1317 -46 -179 yellow_bed[part=foot,facing=south]
execute in sp:void if score %map game matches 1 run setblock 1317 -46 -178 yellow_bed[part=head,facing=south]
execute in sp:void if score %map game matches 0 positioned 1000 -50 -250 run kill @e[type=item,distance=..100]
execute in sp:void if score %map game matches 1 positioned 1317 -43 -230 run kill @e[type=item,distance=..100]
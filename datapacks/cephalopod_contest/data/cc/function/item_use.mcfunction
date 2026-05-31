## use item
# nitro boat karts
# TODO: CHANGE NBK ITEMS TO ACTIVATE BY JUMP KEY
# execute if score %mode game matches 16 if items entity @s weapon.mainhand *[custom_data~{}] run schedule function cc:lightning_remove 1s
# execute if score %mode game matches 16 if score .id itembox_cd matches 0 run tellraw @s "Struck everyone with lightning"
# execute if score %mode game matches 16 if score .id itembox_cd matches 0 as @a[tag=!out,distance=0.01..] at @s positioned ~ ~0.5 ~ run function cc:item_lightning
# execute if score %mode game matches 16 if score .id itembox_cd matches 1 run function cc:item_blooper
# execute if score %mode game matches 16 if score .id itembox_cd matches 2 run function cc:item_coke
# execute if score %mode game matches 16 run item replace entity @s weapon.offhand with air
# nun run
execute if score %mode game matches 9 if items entity @s weapon.mainhand *[item_model=sugar] run function cc:super_nun
execute if score %mode game matches 9 if items entity @s weapon.mainhand *[item_model=nether_star] run function cc:stun_the_sinful
execute if score %mode game matches 9 if items entity @s weapon.mainhand *[item_model=turtle_egg] run function cc:judgement
# kitpvp weapons
execute if score @s Kit_ID matches 29 if items entity @s weapon.mainhand *[item_model=tnt] run function cc:landed
execute if score @s Kit_ID matches 32 unless score @s tp_cd matches 1.. if items entity @s weapon.mainhand *[item_model=book] run function cc:teleporter_use
execute if score @s Kit_ID matches 36 unless score @s build_cd matches 1.. if items entity @s weapon.mainhand *[item_model=oak_planks] run function kitpvp:build/wall
execute if score @s Kit_ID matches 36 unless score @s build_cd matches 1.. if items entity @s weapon.mainhand *[item_model=petrified_oak_slab] run function kitpvp:build/floor
# go through other kitpvp rightclicks as well
execute if score @s Kit_ID matches 23 run function kitpvp:eng/rightclick
execute if score @s Kit_ID matches 25 run function kitpvp:eng/rightclick
#execute if score @s Kit_ID matches 25..26 run function kitpvp:pyro/rightclick
execute if score @s Kit_ID matches 39 if score @s sentry_count matches 0 unless score @s build_cd matches 1.. if items entity @s weapon.mainhand *[item_model=furnace] at @s run function kitpvp:eng/sentry/build_lean
execute if score @s Kit_ID matches 25 if score @s sentry_count matches 0 unless score @s build_cd matches 1.. if items entity @s weapon.mainhand *[item_model=furnace] at @s run function kitpvp:eng/sentry/build_lean
# mini tnt
#execute if score %mode game matches 24 run function cc:swap_hands
execute if score %mode game matches 24 run function cc:tnt_rightclick
# fireball
execute if items entity @s weapon.offhand *[item_model=fire_charge] run function cc:fireball
# board game
execute if score %in game matches 2 run function cc:board/rightclick
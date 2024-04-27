# start round
scoreboard players set %mode game 14
scoreboard players set %second game 0
scoreboard players set %increment game 1
bossbar set cc:time value 0
execute in cc:void run spreadplayers 257 762 1 32 under 125 false @a[tag=!out]
scoreboard players set @a jail_time 0
scoreboard players set ammo_items.enabled config 1

# robber items
give @a[team=red] minecraft:wooden_sword[unbreakable={}]
item replace entity @a[team=red] armor.head with minecraft:leather_helmet[unbreakable={}]
item replace entity @a[team=red] armor.chest with minecraft:leather_chestplate[unbreakable={}]
item replace entity @a[team=red] armor.legs with minecraft:leather_leggings[unbreakable={}]
item replace entity @a[team=red] armor.feet with minecraft:leather_boots[unbreakable={}]
execute as @a[team=red] run function shb:give/carrot/pistol_bad
give @a[team=red] minecraft:iron_nugget[custom_name='{"text":"Bullet","italic":false}',custom_data={ammo:{type:1b}}] 128

# cop items
give @a[tag=cop] minecraft:stone_sword[unbreakable={},custom_name='{"text":"Baton","italic":false}']
item replace entity @a[tag=cop] armor.head with minecraft:chainmail_helmet[unbreakable={}]
item replace entity @a[tag=cop] armor.chest with minecraft:chainmail_chestplate[unbreakable={}]
item replace entity @a[tag=cop] armor.legs with minecraft:chainmail_leggings[unbreakable={}]
item replace entity @a[tag=cop] armor.feet with minecraft:chainmail_boots[unbreakable={}]
execute as @a[tag=cop] run function shb:give/carrot/pistol
execute as @a[tag=cop] run function shb:give/taser
give @a[tag=cop] minecraft:iron_nugget[custom_name='{"text":"Bullet","italic":false}',custom_data={ammo:{type:1b}}] 128

# reset money scoreboard
scoreboard players reset * money
scoreboard objectives setdisplay sidebar money
scoreboard players set @a money 0
scoreboard players set #WEED money 50
scoreboard players set #JOINT money 150
scoreboard players set #COKE money 315
scoreboard players set #BTH money 600
scoreboard players set #weed_emerald money 2
scoreboard players set #joint_emerald money 5
scoreboard players set #coke_emerald money 9
scoreboard players set #bth_emerald money 15
scoreboard players set #100 money 100

## procedurally generated buildings
# use RNG to get int 0..899, from that derive an ordered pair (0..29,0..29) to determine chunk to center about
scoreboard players set .in prng 900
function shb:rng
scoreboard players operation .x heist = .out prng
scoreboard players operation .x heist /= 30 calc
scoreboard players operation .z heist = .out prng
scoreboard players operation .z heist %= 30 calc
# place markers centered about the random position
execute in cc:void positioned 0 -32 512 summon marker run function cc:prepare_heists
# place jigsaw structures at corresponding build markers
execute at @e[type=marker,tag=build_hotel] run place jigsaw cc:hotel/lobby minecraft:door 4 ~ ~ ~
#execute at @e[type=marker,tag=build_bank] run place jigsaw cc:bank/root minecraft:door 3 ~ ~ ~
#execute at @e[type=marker,tag=build_skyscraper] run place jigsaw cc:skyscraper/root minecraft:door 3 ~ ~ ~
# spawn mobs
execute as @e[type=marker,tag=heist_melee] at @s run function cc:enemy_melee
execute as @e[type=marker,tag=heist_ranged] at @s run function cc:enemy_ranged
execute as @e[type=marker,tag=heist_dog] at @s run function cc:enemy_dog
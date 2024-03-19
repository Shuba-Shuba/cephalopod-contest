# start round
scoreboard players set %mode game 14
scoreboard players set %second game 0
scoreboard players set %increment game 1
bossbar set lobster:time value 0
execute in sp:void run spreadplayers 257 762 1 32 under 125 false @a[tag=!out]
scoreboard players set @a jail_time 0
scoreboard players set ammo_items.enabled config 1

# robber items
give @a[team=red] wooden_sword{Unbreakable:1b}
item replace entity @a[team=red] armor.head with minecraft:leather_helmet{Unbreakable:1b}
item replace entity @a[team=red] armor.chest with minecraft:leather_chestplate{Unbreakable:1b}
item replace entity @a[team=red] armor.legs with minecraft:leather_leggings{Unbreakable:1b}
item replace entity @a[team=red] armor.feet with minecraft:leather_boots{Unbreakable:1b}
execute as @a[team=red] run function shb:give/carrot/pistol_bad
give @a[team=red] iron_nugget{ammo:{type:1b},display:{Name:'{"text":"Bullet","italic":false}'}} 128

# cop items
give @a[tag=cop] stone_sword{Unbreakable:1b,display:{Name:'{"text":"Baton","italic":false}'}}
item replace entity @a[tag=cop] armor.head with minecraft:chainmail_helmet{Unbreakable:1b}
item replace entity @a[tag=cop] armor.chest with minecraft:chainmail_chestplate{Unbreakable:1b}
item replace entity @a[tag=cop] armor.legs with minecraft:chainmail_leggings{Unbreakable:1b}
item replace entity @a[tag=cop] armor.feet with minecraft:chainmail_boots{Unbreakable:1b}
execute as @a[tag=cop] run function shb:give/carrot/pistol
execute as @a[tag=cop] run function shb:give/taser
give @a[tag=cop] iron_nugget{ammo:{type:1b},display:{Name:'{"text":"Bullet","italic":false}'}} 128

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
execute in sp:void positioned 0 -32 512 summon marker run function lobster:prepare_heists
# place jigsaw structures at corresponding build markers
execute at @e[type=marker,tag=build_hotel] run place jigsaw lobster:hotel/lobby minecraft:door 4 ~ ~ ~
#execute at @e[type=marker,tag=build_bank] run place jigsaw lobster:bank/root minecraft:door 3 ~ ~ ~
#execute at @e[type=marker,tag=build_skyscraper] run place jigsaw lobster:skyscraper/root minecraft:door 3 ~ ~ ~
# spawn mobs
execute as @e[type=marker,tag=heist_melee] at @s run function lobster:enemy_melee
execute as @e[type=marker,tag=heist_ranged] at @s run function lobster:enemy_ranged
execute as @e[type=marker,tag=heist_dog] at @s run function lobster:enemy_dog
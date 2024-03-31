# returns spectators to their marker and spawn an armor stand there
# @s, @e[type=marker,tag=this,limit=1] = board marker
tag @s add this

# teleport right player to marker
execute as @a[tag=!out] if score @s board_turn = @e[type=marker,tag=this,limit=1] board_turn run tp @s ~ ~ ~

# make armor stand
summon armor_stand ~ ~ ~ {Tags:["init","board_player"],NoBasePlate:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,ShowArms:1b,CustomName:'"OFFLINE"',DisabledSlots:16191}
data modify entity @e[type=armor_stand,limit=1,sort=nearest,tag=init] Rotation set from entity @s Rotation
scoreboard players operation @e[type=armor_stand,limit=1,sort=nearest,tag=init] board_turn = @e[type=marker,tag=this,limit=1] board_turn
execute as @a[tag=!out] if score @s board_turn = @e[type=marker,tag=this,limit=1] board_turn run loot replace entity @e[type=armor_stand,limit=1,sort=nearest,tag=init] armor.head loot cc:player_head
execute as @e[type=armor_stand,limit=1,sort=nearest,tag=init] run data modify entity @s CustomName set from entity @s ArmorItems[3].tag.SkullOwner.Name
tag @e[type=armor_stand,limit=1,sort=nearest,tag=init] remove init

tag @s remove this
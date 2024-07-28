# the only way to remove the crystal beam is to kill the original crystal and summon a new one because of a minecraft bug
summon end_crystal ~ ~ ~ {Tags:["init","tnt"],ShowBottom:0b}
scoreboard players operation @e[type=end_crystal,tag=init,limit=1,sort=nearest] ownerUUID0 = @s ownerUUID0
scoreboard players operation @e[type=end_crystal,tag=init,limit=1,sort=nearest] ownerUUID1 = @s ownerUUID1
scoreboard players operation @e[type=end_crystal,tag=init,limit=1,sort=nearest] ownerUUID2 = @s ownerUUID2
scoreboard players operation @e[type=end_crystal,tag=init,limit=1,sort=nearest] ownerUUID3 = @s ownerUUID3
tag @e[type=end_crystal] remove init
kill @s
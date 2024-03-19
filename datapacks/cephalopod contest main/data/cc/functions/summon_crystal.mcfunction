summon end_crystal ~ ~ ~ {Tags:["init","tnt"],ShowBottom:0b}
scoreboard players operation @e[type=end_crystal,limit=1,sort=nearest,tag=init] ownerUUID0 = @s UUID0
scoreboard players operation @e[type=end_crystal,limit=1,sort=nearest,tag=init] ownerUUID1 = @s UUID1
scoreboard players operation @e[type=end_crystal,limit=1,sort=nearest,tag=init] ownerUUID2 = @s UUID2
scoreboard players operation @e[type=end_crystal,limit=1,sort=nearest,tag=init] ownerUUID3 = @s UUID3
tag @e[type=end_crystal] remove init
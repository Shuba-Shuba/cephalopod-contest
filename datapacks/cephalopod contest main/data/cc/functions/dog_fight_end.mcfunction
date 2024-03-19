#execute as @e[type=wolf,limit=1] on owner run tag @s add winner
scoreboard players operation .system UUID0 = @e[type=wolf,limit=1] ownerUUID0
scoreboard players operation .system UUID1 = @e[type=wolf,limit=1] ownerUUID1
scoreboard players operation .system UUID2 = @e[type=wolf,limit=1] ownerUUID2
scoreboard players operation .system UUID3 = @e[type=wolf,limit=1] ownerUUID3
execute as @a[tag=!out] if score @s UUID0 = .system UUID0 if score @s UUID1 = .system UUID1 if score @s UUID2 = .system UUID2 if score @s UUID3 = .system UUID3 run tag @s add winner
tag @a[tag=!out,tag=!winner] add ded
data modify block 0 -63 0 front_text.messages[0] set value '[{"selector":"@p[tag=winner]"}," - WINNER"]'
data modify entity @e[type=wolf,limit=1] CustomName set from block 0 -63 0 front_text.messages[0]
schedule function cc:end 2s
scoreboard players set %mode game -1
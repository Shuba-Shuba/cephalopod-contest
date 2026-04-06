# setup
tag @s add this
execute store result score #mobs stats run gamerule mob_griefing
execute store result score #death_messages stats run gamerule show_death_messages
execute store result score #difficulty stats run difficulty
scoreboard players set #exploding stats 1
gamerule mob_griefing false
gamerule show_death_messages false
difficulty easy

# record killer player
scoreboard players operation @e[distance=..8,tag=!this] killerUUID0 = @s ownerUUID0
scoreboard players operation @e[distance=..8,tag=!this] killerUUID1 = @s ownerUUID1
scoreboard players operation @e[distance=..8,tag=!this] killerUUID2 = @s ownerUUID2
scoreboard players operation @e[distance=..8,tag=!this] killerUUID3 = @s ownerUUID3

# explosion
summon creeper ~ ~ ~ {Fuse:0,ignited:1b,CustomName:"bomb.shb",ExplosionRadius:3b,Tags:["shb"]}

# posthook
schedule function shb:difficulty 2t
kill @s
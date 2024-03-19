#execute store result score mobGriefing gamerule run gamerule mobGriefing
#gamerule mobGriefing false
summon creeper ~ ~ ~ {Fuse:0,ignited:1b,CustomName:'"The Nuclear Option"',ExplosionRadius:0b}
#execute if score mobGriefing gamerule matches 1 run schedule function sp:mobs 2t
kill @s[type=!player]
gamemode spectator @s[type=player]
tellraw @a [{"selector":"@s","color":"red"}," has been eliminated!"]
tag @s add ded
execute if score crash.enabled config matches 1 if entity @s[type=player] run function cc:crash
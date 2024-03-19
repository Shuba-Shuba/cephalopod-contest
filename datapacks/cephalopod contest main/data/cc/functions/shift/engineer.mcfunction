#tp @s @s
#execute align y unless block ~ ~ ~ barrier unless block ~ ~ ~ lava run setblock ~ ~ ~ bedrock
#scoreboard players set @s shift_cd 200
#xp set @s 200 levels
summon tnt
scoreboard players set @s shift_cd 60
xp set @s 60 levels
# get uuid of who to search for

execute store result score %search UUID0 run data get entity @s Owner[0]
execute store result score %search UUID1 run data get entity @s Owner[1]
execute store result score %search UUID2 run data get entity @s Owner[2]
execute store result score %search UUID3 run data get entity @s Owner[3]


# search for uuid in enders kit users

execute as @a[scores={Kit_ID=10}] if score @s UUID0 = %search UUID0 if score @s UUID1 = %search UUID1 if score @s UUID2 = %search UUID2 if score @s UUID3 = %search UUID3 run tag @s add owner
tp @a[tag=owner,limit=1] ~ ~ ~ ~ ~
tag @a remove owner
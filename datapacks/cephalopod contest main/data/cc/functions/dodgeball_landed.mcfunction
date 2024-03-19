#execute positioned ~ ~-1 ~ run tag @a[distance=..1.5,tag=!out] add ded
#execute positioned ~ ~-1 ~ run kill @a[distance=..1.5,tag=!out,tag=ded]
kill @e[type=arrow,limit=1,sort=nearest]

kill @s

#say dodgeball landed
setblock 228 123 793 air destroy
tellraw @a ["Oh no! ",{"selector":"@s"}," blew up the fucking gas station!"]
fill 235 122 766 241 127 775 air destroy
fill 247 122 768 253 125 774 air destroy
fill 246 126 767 254 128 774 air destroy
gamerule keepInventory false
tag @s add this
execute as @a[x=234,y=122,z=765,dx=20,dy=6,dz=11] at @s run function lobster:gas_station_hit
gamerule keepInventory true
tag @s remove this
scoreboard players remove @s money 100
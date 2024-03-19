item replace entity @s weapon.mainhand with air

# stop player movement and setup
execute as @a[tag=!out,tag=!ded,distance=0.01..10] at @s run summon marker ~ ~ ~ {Tags:["broken_modem_tether"]}
execute as @a[tag=!out,tag=!ded,distance=0.01..10] at @s run data modify entity @e[type=marker,limit=1,sort=nearest,tag=broken_modem_tether] Rotation set from entity @s Rotation
scoreboard players set @a[tag=!out,tag=!ded,distance=0.01..10] broken_modem 40
effect give @s levitation 2 0 true
scoreboard players set @s broken_modem_cd 200
execute as @a[distance=..80] at @s run playsound minecraft:block.conduit.deactivate master @s
particle enchanted_hit ~ ~ ~ 5 5 5 0.5 200 normal @a

# explode previously stopped projectiles
execute as @e[type=#cc:broken_modem_stops,tag=broken_modem_stopped] at @s run function shb:explode_destructive

# stop nearby projectiles
tag @e[type=#cc:broken_modem_stops,distance=..10] add broken_modem_stopped
execute as @e[type=#cc:broken_modem_stops,distance=..10] run data merge entity @s {Motion:[0d,0d,0d],NoGravity:1b,Invulnerable:1b}
# smites all players within 3.5 blocks

execute as @a[distance=..3.5] at @s run summon lightning_bolt ~ ~ ~
playsound minecraft:entity.lightning_bolt.impact master @a[distance=..3.5]
playsound minecraft:entity.lightning_bolt.thunder master @a[distance=..3.5]
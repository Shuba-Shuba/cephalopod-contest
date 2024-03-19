scoreboard players add .payload_checkpoint game 1
scoreboard players add %second game 60
tellraw @a {"text":"Checkpoint passed - +60 seconds","color":"aqua"}
execute as @a[team=blue] at @s run playsound minecraft:entity.player.levelup master @s ~ ~ ~ 1 0.5
execute as @a[team=red] at @s run playsound minecraft:entity.enderman.scream master @s ~ ~ ~ 0.5 1
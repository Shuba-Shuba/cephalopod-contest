tellraw @a ["",{"selector":"@s"}," destroyed ",{"text":"BLUE","color":"aqua"}," bed!"]
title @a[team=blue] title {"text":"BED DESTROYED!","color":"red"}
title @a[team=blue] subtitle ["",{"selector":"@s"}," destroyed your bed!"]
execute as @a[team=!blue] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1
execute as @a[team=blue] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
scoreboard players set @s break_blue 0
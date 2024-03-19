tellraw @a ["",{"selector":"@s"}," destroyed ",{"text":"GREEN","color":"green"}," bed!"]
title @a[team=green] title {"text":"BED DESTROYED!","color":"red"}
title @a[team=green] subtitle ["",{"selector":"@s"}," destroyed your bed!"]
execute as @a[team=!green] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1
execute as @a[team=green] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
scoreboard players set @s break_green 0
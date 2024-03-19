tellraw @a ["",{"selector":"@s"}," destroyed ",{"text":"RED","color":"red"}," bed!"]
title @a[team=red] title {"text":"BED DESTROYED!","color":"red"}
title @a[team=red] subtitle ["",{"selector":"@s"}," destroyed your bed!"]
execute as @a[team=!red] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1
execute as @a[team=red] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
scoreboard players set @s break_red 0
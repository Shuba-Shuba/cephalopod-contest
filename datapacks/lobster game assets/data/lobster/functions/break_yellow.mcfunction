tellraw @a ["",{"selector":"@s"}," destroyed ",{"text":"YELLOW","color":"yellow"}," bed!"]
title @a[team=yellow] title {"text":"BED DESTROYED!","color":"red"}
title @a[team=yellow] subtitle ["",{"selector":"@s"}," destroyed your bed!"]
execute as @a[team=!yellow] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 1 1
execute as @a[team=yellow] at @s run playsound minecraft:entity.wither.death master @s ~ ~ ~ 1 1
scoreboard players set @s break_yellow 0
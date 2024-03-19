# @s = person who died
scoreboard players remove @s lives 1
execute if score @s lives matches 0 at @s anchored eyes run function lobster:landed_no_kb
execute if score @s lives matches 1.. run fill ~-1 32 ~-1 ~1 32 ~1 frosted_ice keep
execute if score @s lives matches 1.. run summon marker ~ 32 ~ {Tags:["spawn_platform"]}
execute if score @s lives matches 1.. run tp ~ 33 ~
execute if score @s lives matches 1.. run tellraw @a ["",{"selector":"@s"}," died - ",{"score":{"name":"@s","objective":"lives"}}," lives remaining"]
execute as @a[distance=..80] at @s run playsound minecraft:entity.wither.hurt master @s ~ ~ ~ 1 1.5

# triangulator reset
function lobster:untag_entity
scoreboard players set @s[scores={triangulator_cd=2..}] triangulator_cd 1
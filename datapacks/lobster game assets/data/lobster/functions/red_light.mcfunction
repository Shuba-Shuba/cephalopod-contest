scoreboard players set %tmp_light game 1
execute at @a[tag=!out] run playsound minecraft:custom.redlightgreenlight neutral @a[tag=!out] ~ ~ ~ 0.5 1
execute at @a[tag=!out] run summon marker ~ ~ ~ {Tags:["rlgl"]}
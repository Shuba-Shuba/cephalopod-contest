scoreboard players set @s evoker_cd 3
execute rotated ~ 0 positioned ^ ^ ^2.5 run summon evoker_fangs ~ ~ ~ {Tags:["evoker_kit"]}
execute rotated ~ 0 positioned ^ ^ ^3.75 run summon evoker_fangs ~ ~ ~ {Tags:["evoker_kit"]}
execute rotated ~ 0 positioned ^ ^ ^5 run summon evoker_fangs ~ ~ ~ {Tags:["evoker_kit"]}
execute rotated ~ 0 positioned ^ ^ ^6.25 run summon evoker_fangs ~ ~ ~ {Tags:["evoker_kit"]}
tag @s add this
execute as @e[type=evoker_fangs,tag=evoker_kit] run data modify entity @s Owner set from entity @p[tag=this]
tag @s remove this
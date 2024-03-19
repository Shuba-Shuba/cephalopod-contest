execute align xyz unless block ~ ~ ~ fire unless block ~ ~ ~ light[level=15] unless entity @e[type=marker,distance=..0.3,tag=fire] run summon marker ~ ~ ~ {Tags:["fire"]}
execute align xyz if block ~ ~ ~ light[level=15] unless entity @e[type=marker,distance=..0.3,tag=fire] run summon marker ~ ~ ~ {Tags:["fire_light"]}
execute align xyz run scoreboard players set @e[type=marker,distance=..0.3,tag=fire] fire_time 120
execute align xyz unless block ~ ~ ~ fire run setblock ~ ~ ~ fire keep
execute align xyz if block ~ ~ ~ light[level=15] run setblock ~ ~ ~ fire
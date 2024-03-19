execute if entity @e[tag=mode_rng,type=marker,tag=mode27,tag=enabled] positioned 1 74 35 run function cc:ui/enable27
execute if entity @e[tag=mode_rng,type=marker,tag=mode27,tag=!enabled] positioned 1 74 35 run function cc:ui/disable27

execute if entity @e[tag=mode_rng,type=marker,tag=mode28,tag=enabled] positioned 0 74 35 run function cc:ui/enable28
execute if entity @e[tag=mode_rng,type=marker,tag=mode28,tag=!enabled] positioned 0 74 35 run function cc:ui/disable28

execute if entity @e[tag=mode_rng,type=marker,tag=mode29,tag=enabled] positioned -1 74 35 run function cc:ui/enable29
execute if entity @e[tag=mode_rng,type=marker,tag=mode29,tag=!enabled] positioned -1 74 35 run function cc:ui/disable29


setblock 1 73 35 air destroy

setblock 0 73 35 air destroy

setblock -1 73 35 air destroy


setblock 1 72 35 air destroy

setblock 0 72 35 air destroy

setblock -1 72 35 air destroy
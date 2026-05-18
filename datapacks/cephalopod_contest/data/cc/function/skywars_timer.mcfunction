tag @r[tag=skywars] add tmp_separate
execute if score %map game matches 0 run tp @a[tag=skywars,tag=tmp_separate] 1000 60 267 180 0
execute if score %map game matches 0 run tp @a[tag=skywars,tag=!tmp_separate] 1000 60 261 0 0
execute if score %map game matches 1 run tp @a[tag=skywars,tag=tmp_separate] 689 43 199 180 0
execute if score %map game matches 1 run tp @a[tag=skywars,tag=!tmp_separate] 689 43 193 0 0
tag @a remove tmp_separate
tellraw @a[tag=!out] {text:"SUDDEN DEATH - Players have been teleported to mid",color:"red"}
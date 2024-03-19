summon lightning_bolt ~ ~ ~
summon marker ~ ~ ~ {Tags:["tmp_lightning"]}
fill ~3 ~ ~3 ~3 ~ ~-3 glass keep
fill ~3 ~ ~3 ~-3 ~ ~3 glass keep
fill ~-3 ~ ~-3 ~-3 ~ ~3 glass keep
fill ~-3 ~ ~-3 ~3 ~ ~-3 glass keep
tellraw @s ["",{"selector":"@a[tag=this]"}," struck everyone with lightning"]
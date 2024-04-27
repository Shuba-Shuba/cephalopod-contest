scoreboard players set @s level_bomb_cd 140
execute anchored eyes run summon snowball ^ ^ ^ {Tags:["level_bomb_carrier","shb"],Item:{id:"minecraft:creeper_spawn_egg",count:1},Passengers:[{id:"minecraft:marker",Tags:["bomb_level_init"],data:{level:0}}]}
execute as @e[type=snowball,limit=1,sort=nearest,tag=level_bomb_carrier] run function shb:launch {"vel":"1"}
#execute positioned 0.0 0.0 0.0 rotated as @s run summon marker ^ ^ ^1 {UUID:[I;0,0,0,0]}
#data modify entity @e[type=snowball,limit=1,sort=nearest,tag=level_bomb_carrier] Motion set from entity 0-0-0-0-0 Pos
#kill 0-0-0-0-0
data modify entity @e[type=snowball,limit=1,sort=nearest,tag=level_bomb_carrier] Owner set from entity @s UUID
#execute as @e[type=snowball,limit=1,sort=nearest,tag=level_bomb_carrier] on passengers run tag @s add init
#scoreboard players operation #tmp bomb_level = @s bomb_level
#execute store result entity @e[type=marker,tag=init,limit=1] data.level int 1 run scoreboard players get @s bomb_level
#data modify block 0 -63 0 front_text.messages[0] set value '[{"text":"Level ","italic":false},{"score":{"name":"#tmp","objective":"bomb_level"}}," Bomb"]'
#data modify entity @e[type=marker,tag=init,limit=1] CustomName set from block 0 -63 0 front_text.messages[0]
#tag @e[type=marker] remove init
clear @s creeper_spawn_egg
playsound minecraft:entity.snowball.throw master @a[distance=..80] ~ ~ ~ 1 0
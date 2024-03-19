# announce planted bomb
tellraw @a [{"text":"Bomb has been planted - ","color":"red"},{"score":{"name":"time.cs_bomb","objective":"config"}},"s to detonation"]
execute as @a at @s run playsound minecraft:entity.wither.spawn master @s ~ ~ ~ 0.5 1

# symbolic tnt
setblock ~ ~ ~ air replace
summon tnt ~ ~ ~ {fuse:32767s,Invulnerable:1b,Motion:[0d,0.2d,0d],Tags:["cs"],CustomName:'"cs_bomb.shb"'}

# start fuse
scoreboard players set .cs_bomb game 1
execute store result bossbar lobster:time max run scoreboard players operation %second game = time.cs_bomb config
scoreboard players add %second game 1
bossbar set lobster:time color red
function lobster:clock_cs
tag @s add cs_bomb
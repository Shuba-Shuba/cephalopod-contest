scoreboard players set @s quick_bomb_cd 60
execute anchored eyes run summon tnt ^ ^ ^ {Tags:["quick_bomb"],fuse:12s}
execute as @e[type=tnt,limit=1,sort=nearest,tag=quick_bomb] run function shb:launch {vel:1.2}
clear @s carrot_on_a_stick[custom_data={tnt:5b}]
playsound minecraft:entity.snowball.throw master @a[distance=..80] ~ ~ ~ 1 0
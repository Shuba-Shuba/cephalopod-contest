scoreboard players set @s shift_cd 140
xp set @s 140 levels
summon tnt ~ ~ ~ {fuse:7s,NoGravity:1b}
summon tnt ~ ~ ~ {fuse:7s,NoGravity:1b}
scoreboard players set .r raycast 10
function lobster:focus_loop
execute at @s run summon marker ~ ~ ~ {Tags:["focus_tether"]}
execute at @s run playsound minecraft:block.piston.extend master @a ~ ~ ~ 1 0.75
data modify entity @e[type=marker,tag=focus_tether,limit=1,sort=nearest] Rotation set from entity @s Rotation
scoreboard players set @s focus_time 7
# set amount of possible maps
execute store result score %map game run random value 0..5

# start round
execute in cc:void run forceload add 244 696
execute in cc:void positioned 244 127 696 run kill @e[type=glow_item_frame,distance=..1,tag=shard]
execute in cc:void run summon minecraft:glow_item_frame 244 127 696 {Facing:2b,Invisible:1b,Tags:["shard"],Item:{id:"minecraft:echo_shard",count:1,components:{"minecraft:custom_data":{shard:1b}}}}
scoreboard objectives setdisplay sidebar
#tellraw @a "\nRace:\nGet to the end. If you are too slow, you will die. Don't be bad\n"
scoreboard players set %camera game 3
gamemode spectator @a[tag=!out]
schedule function cc:mode/race 9s
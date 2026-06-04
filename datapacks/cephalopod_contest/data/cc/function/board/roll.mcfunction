# @s = player currently rolling, or DNE if left during start phase
# in the future, there may be multiple dice to choose from; maybe even a physics simulation for a dice block

# end start phase
scoreboard players reset .start board_roll
scoreboard players reset @s board_await

# roll
tag @s add this
$data modify storage cc:board tmp.rolls set value $(rolls)
execute store result score #length calc run data get storage cc:board tmp.rolls
execute store result score #tmp calc run random value 1..
execute store result storage cc:board tmp.index int 1 run scoreboard players operation #tmp calc %= #length calc
execute store result score .steps board_roll run function cc:board/get_roll_value with storage cc:board tmp
tellraw @a [{text:"",color:gray},{selector:"@s"}," rolled ",{score:{name:".steps",objective:"board_roll"},color:white},[{text:" (from ",italic:true},{nbt:"tmp.rolls[]",storage:"cc:board",plain:true,color:gray},")"]]
data remove storage cc:board tmp
scoreboard players operation .steps board_roll *= .multiplier board_roll
execute if score .multiplier board_roll matches 2.. run tellraw @a ["After x",{score:{name:".multiplier",objective:"board_roll"}}," multiplier: ",{score:{name:".steps",objective:"board_roll"},bold:true}]
execute as @e[type=item_display,tag=board_player] if score @s board_turn = .i board_turn at @s run function cc:board/move/step
tag @s remove this
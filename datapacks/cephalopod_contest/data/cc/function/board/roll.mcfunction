# @s = player currently rolling, or DNE if left during start phase
# in the future, there may be multiple dice to choose from; maybe even a physics simulation for a dice block

# end start phase
scoreboard players reset .start board_roll
scoreboard players reset @s board_await

# get roll value
$data modify storage cc:board tmp.arr set value $(rolls)
execute store result score .steps board_roll run function cc:board/get_random_element
tellraw @a [{text:"",color:gray},{selector:"@s"}," rolled ",{score:{name:".steps",objective:"board_roll"},color:white},[{text:" (from ",italic:true},{nbt:"tmp.arr[]",storage:"cc:board",plain:true,color:gray},")"]]
data remove storage cc:board tmp

# roll multiplier
scoreboard players operation .steps board_roll *= .multiplier board_roll
execute if score .multiplier board_roll matches 2.. run tellraw @a ["After x",{score:{name:".multiplier",objective:"board_roll"}}," multiplier: ",{score:{name:".steps",objective:"board_roll"},bold:true}]

# start movement
tag @s add this
execute as @e[type=item_display,tag=board_player] if score @s board_turn = .i board_turn at @s run function cc:board/move/step
tag @s remove this
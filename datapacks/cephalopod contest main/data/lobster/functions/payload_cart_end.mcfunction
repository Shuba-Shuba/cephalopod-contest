# win
tag @a[team=blue] add winner
tellraw @a [{"text":"Payload cart pushed to the end - ","color":"green"},{"text":"BLU","color":"aqua"}," team wins!"]
execute if score %map game matches 0 run tellraw @a "Tim Green: Owie my youchers! That bomb gave me a booboo..."

# fx
function lobster:landed_no_kb
particle minecraft:flame ~ ~.5 ~ 0 0 0 0.75 500 normal @a
stopsound @a neutral minecraft:entity.minecart.riding

# end
execute as @a[tag=!ded,tag=!out] run function battle:kits/clear_kit
function lobster:end

# break loop
scoreboard players set .payload_loop game 1
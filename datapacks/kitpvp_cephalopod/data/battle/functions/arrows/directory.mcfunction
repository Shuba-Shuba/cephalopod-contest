# detecting which level of water breathing the entity hit by a custom arrow has

execute if entity @s[type=!arrow] store result score %level arrow run data get entity @s active_effects[{id:"minecraft:water_breathing"}].amplifier


# detecting which level of water breathing the custom arrow in a block has

execute if entity @s[type=arrow] store result score %level arrow run data get entity @s custom_potion_effects[0].amplifier


# running a function at the target location based on water breathing level

execute if score %level arrow matches 30 at @s run function battle:arrows/tnt
execute if score %level arrow matches 31 at @s run function battle:arrows/lightning
execute if score %level arrow matches 32 at @s run function battle:arrows/freeze
#execute if score %level arrow matches 33 at @s run function battle:arrows/tp
execute if score %level arrow matches 34 at @s run function battle:arrows/blindness


# removing the arrow

kill @s[type=arrow]
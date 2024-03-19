# the minecraft looking_at predicate is hardcoded to only work for entities within 100 blocks
# the distance in the selector needs to be raycast step count * 0.25
# sadly, the distance can't be a score value. this makes it impractical to use this system with variable range guns. however, damage falloff will be implemented instead of variable range, so it's all good.
tag @e[type=!#shb:protect,tag=!this,distance=..100] add hit_check
execute as @e[tag=hit_check] run function shb:raycast/hit_check1
tag @e remove hit_check
#say shoot check